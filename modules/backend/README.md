# Backend

The backend module provides an API to manage, retrieve, and interact with telemetry data collected from the weather balloon.
Built with FastAPI, it acts as a bridge between the database, simulator, and metrics modules.

## Purpose

* **API Management**: Exposes endpoints for the simulator to send telemetry data and for the metrics module to retrieve and visualize that data.
* **Data Interaction**: Facilitates interactions between the user interface (via metrics) and the data storage (via DB), ensuring seamless data flow throughout the system.

## Tech Stack

| Technology | Purpose                                                    |
|------------|------------------------------------------------------------|
| Python     | Core programming language for backend development          |
| FastAPI    | Web framework used to create RESTful APIs                  |
| PostgreSQL | Database for storing structured telemetry data             |
| InfluxDB   | Time-series database for real-time telemetry storage       |
| SQLAlchemy | ORM for managing database interactions                     |
| Docker     | Containerization for consistent deployment and scalability |

## Usage

To run the backend module, ensure the `DB` module is operational and the databases are accessible.
Use the provided Docker Compose file in this directory to set up and run the backend service.

Refer to the API documentation for details on the available endpoints and their usage.
