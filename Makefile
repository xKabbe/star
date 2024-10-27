help: ## Show available make commands
	@echo "Available make commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

start_documentation: ## Starts the documentation server
	@echo "Start documentation..."
	@mkdocs serve || { echo "Failed to start documentation"; exit 1; }

status: ## Check the status of the services
	@echo "Checking the status of services..."
	@lsof -i :8000 || echo "Documentation is not running"
