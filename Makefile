# Variables
NETWORK_NAME = star_docker_network
GRAFANA_DIR = ./modules/grafana
INFLUXDB_DIR = ./modules/db/influxdb
POSTGRESQL_DIR = ./modules/db/postgresql
BACKEND_DIR = ./modules/backend

help: ## Show available make commands
	@echo "Available make commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

network: ## Create Docker network if it doesn't exist
	@echo "Checking if network exists..."

	@if ! docker network ls | grep -q $(NETWORK_NAME); then \
		echo "🌐 Network '$(NETWORK_NAME)' does not exist. Creating it..."; \
		docker network create $(NETWORK_NAME) && \
		echo "✅ Network '$(NETWORK_NAME)' created successfully."; \
	else \
		echo "✅ Network '$(NETWORK_NAME)' already exists."; \
	fi

# START
start: start_grafana start_dbs start_backend ## Start all services
	@echo "Starting all services..."

start_grafana: network ## Start Grafana service
	@echo "Starting Grafana service..."

	@cd $(GRAFANA_DIR) && docker-compose up -d && \
	echo "🚀 Grafana service started successfully." || { echo "❌ Failed to start Grafana service"; exit 1; }

	@echo "Grafana setup complete!"

start_dbs: start_db_influx start_db_postgres ## Start database services
	@echo "Starting database services..."

start_db_influx: network ## Start InfluxDB service
	@echo "Starting InfluxDB service..."

	@cd $(INFLUXDB_DIR) && docker-compose up -d && \
	echo "🚀 InfluxDB service started successfully." || { echo "❌ Failed to start InfluxDB service"; exit 1; }

	@echo "InfluxDB setup complete!"

start_db_postgres: network ## Start PostgreSQL service
	@echo "Starting PostgreSQL service..."

	@cd $(POSTGRESQL_DIR) && docker-compose up -d && \
	echo "🚀 PostgreSQL service started successfully." || { echo "❌ Failed to start PostgreSQL service"; exit 1; }

	@echo "PostgreSQL setup complete!"

start_backend: network ## Start the backend service
	# TODO: Needs to be implemented
	@echo "Not yet implemented..."

# STOP
stop: stop_grafana stop_dbs stop_backend ## Stop all services
	@echo "Stopping all services"

stop_grafana: ## Stop Grafana service
	@echo "Stopping Grafana service..."

	@cd $(GRAFANA_DIR) && docker-compose down && \
	echo "🛑 Grafana service stopped successfully." || { echo "❌ Failed to stop Grafana service. Please check the logs."; exit 1; }

stop_dbs: stop_db_influx stop_db_postgres ## Stop database services
	@echo "Stopping database services..."

stop_db_influx: ## Stop InfluxDB service
	@echo "Stopping InfluxDB service..."

	@cd $(INFLUXDB_DIR) && docker-compose down && \
	echo "🛑 InfluxDB service stopped successfully." || { echo "❌ Failed to stop InfluxDB service. Please check the logs."; exit 1; }

stop_db_postgres: ## Stop PostgreSQL service
	@echo "Stopping PostgreSQL service..."

	@cd $(POSTGRESQL_DIR) && docker-compose down && \
	echo "🛑 PostgreSQL service stopped successfully." || { echo "❌ Failed to stop PostgreSQL service. Please check the logs."; exit 1; }

stop_backend: ## Stop the backend service
	# TODO: Needs to be implemented
	@echo "Not yet implemented..."

# OTHERS
status: ## Show status of all services
	@echo "Showing status of all services..."

	@for service in "star_grafana" "star_influxdb" "star_postgres"; do \
		if docker ps --filter "name=$$service" --format '{{.Names}}' | grep -q "$$service"; then \
			echo "✅ $$service is running"; \
			docker ps --filter "name=$$service" --format '\
			   📦 Container ID : {{.ID}} \n \
			   🖥  Image        : {{.Image}} \n \
			   🚦 Status       : {{.Status}} \n \
			   🌐 Ports        : {{.Ports}} \n'; \
		else \
			echo "❌ $$service is NOT running"; \
		fi; \
	done

logs: ## Show logs for all services
	@echo "Showing logs for all services..."

	@cd $(GRAFANA_DIR) && docker-compose logs --tail=200 -f grafana &
	@cd $(INFLUXDB_DIR) && docker-compose logs --tail=200 -f influxdb &
	@cd $(POSTGRESQL_DIR) && docker-compose logs --tail=200 -f postgres &
	@wait

clean: ## Clean up resources
	@echo "Cleaning up resources..."

	@if docker network inspect $(NETWORK_NAME) >/dev/null 2>&1; then \
		echo "🛠  Removing network: $(NETWORK_NAME)..."; \
		docker network rm $(NETWORK_NAME); \
		echo "✅ Network $(NETWORK_NAME) removed."; \
	else \
		echo "⚠️  Network $(NETWORK_NAME) not found, skipping..."; \
	fi

	@echo "🗑  Pruning unused volumes..."
	@docker volume prune -f > /dev/null
	@echo "✅ Volume prune complete."

	@echo "Clean-up process complete!"
