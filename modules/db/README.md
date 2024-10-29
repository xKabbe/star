# DB

The DB module is responsible for the data storage component of the weather balloon project.
It houses both PostgreSQL and InfluxDB databases to support the storage of telemetry data. 

## Purpose

* **PostgreSQL**: A relational database to store structured telemetry data and enable complex querying for historical records.
* **InfluxDB**: A time-series database for efficient storage and retrieval of real-time telemetry data, allowing for optimized data handling in time-dependent applications.

## Tech Stack

| Technology | Purpose                                                      |
|------------|--------------------------------------------------------------|
| PostgreSQL | Relational database for historical data storage and querying |
| InfluxDB   | Time-series database for real-time telemetry data            |
| Docker     | Containerization for environment consistency and deployment  |

## Usage

The DB module should be initialized and running before the Metrics and Backend modules to ensure they can access the databases for data visualization and API services.

Refer to the Docker Compose file in this directory to set up and run the DB module.
