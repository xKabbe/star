# Project Modules

The project is organized into four main modules, each serving a unique purpose within the overall architecture.
Each module operates as an independent service but collaborates with the others to provide a complete system for data simulation, management, and visualization.

## Module Overview

1. **[Metrics](./metrics/README.md)**  
   This module provides data visualization through Grafana, displaying real-time and historical telemetry data.
   It integrates with the databases in the DB module to visualize balloon data, whether from simulations or real flights.

2. **[DB](./db/README.md)**  
   A dedicated module for data storage, containing PostgreSQL and InfluxDB to support telemetry data storage.
   Both databases can be accessed by the backend for data management and by the metrics module for visualization.

3. **[Backend](./backend/README.md)**  
   A FastAPI-powered backend that offers an API to manage and retrieve telemetry data.
   The backend interacts with the DB module to expose endpoints for accessing data and serves as the bridge between data storage and visualization.

4. **[Simulator](./simulator/README.md)**  
   This CLI-based module simulates telemetry data for testing.
   It can generate real-time or historical data, providing flexible data generation for testing the backend and metrics modules.

## Prerequisites

Before using this setup, make sure you have the following installed:

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Make](https://makefiletutorial.com/)

### Configuration

To create, run and manage the Docker environment, it is necessary to provide some basic configuration via `.env` files in:

* [.env](./metrics/grafana/.env) in `/grafana`

    ```dotenv
    # Grafana Security
    GF_SECURITY_ADMIN_USER=...
    GF_SECURITY_ADMIN_PASSWORD=...
    # Grafana Database Connection (PostgreSQL)
    GF_DATABASE_TYPE=...
    GF_DATABASE_HOST=...
    GF_DATABASE_NAME=...
    GF_DATABASE_USER=...
    GF_DATABASE_PASSWORD=...
    ```

* [.env](./db/influxdb/.env) in `/grafana`

    ```dotenv
    ...
    ```

* [.env](./db/postgresql/.env) in `/postgresql`

    ```dotenv
    # PostgreSQL Security
    POSTGRES_USER: ...
    POSTGRES_PASSWORD: ...
    POSTGRES_DB: ...
    ```

### Purpose

The following services are being used for:

* `Grafana` for real-time data visualization and monitoring.
            This service provides interactive dashboards that display live sensor data and historical information, allowing us to monitor the balloon's performance and environmental conditions during flight.
* `InfluxDB` for storing time-series data.
             This database is optimized for high-volume, time-stamped data, making it ideal for collecting real-time telemetry from sensors.
             It also integrates seamlessly with Grafana for efficient querying and visualization.
* `PostgreSQL` for long-term data archiving and structured storage.
               This relational database is used to store processed and finalized data after flight, making it accessible for future analysis, reporting, and backup.

### [Makefile](../Makefile) Usage

The provided `Makefile` automates the following operations:

| Command       | Description                                            |
|---------------|--------------------------------------------------------|
| `make start`  | Start network and services                             |
| `make stop`   | Stop services                                          |
| `make status` | Check services status                                  |
| `make logs`   | Show logs for services                                 |
| `make clean`  | Clean all resources: containers, networks, and volumes |