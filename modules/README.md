# Project Modules

The project is organized into three main modules, each serving a unique purpose within the overall architecture.
Each module operates as an independent service but collaborates with the others to provide a complete system for data simulation, management, and visualization.

## Module Overview

1. **[Dashboard](./dashboard/README.md)**  
   This module provides data visualization and storage, using Grafana to visualize telemetry data and a database (PostgreSQL or InfluxDB) for data storage.
   Ideal for monitoring both real-time and historical balloon data.

2. **[Backend](./backend/README.md)**  
   A FastAPI-powered backend that offers an API to manage and retrieve telemetry data.
   The backend interacts with the database, exposing endpoints for accessing data and serving as the bridge between the data storage and the visualization layers.

3. **[Simulator](./simulator/README.md)**  
   This CLI-based module simulates telemetry data for testing.
   It can generate real-time or historical data for backend and dashboard testing, allowing configuration options for flexible data generation.

## Tech Stack

| Module        | Technology             | Purpose                                                                                |
|---------------|------------------------|----------------------------------------------------------------------------------------|
| **Dashboard** | Grafana                | Data visualization platform used for displaying live and historical telemetry data.    |
|               | PostgreSQL or InfluxDB | Primary database for storing telemetry data from both real flights and simulated data. |
|               | Docker                 | Containerization of the Dashboard for easy deployment and scalability.                 |
| **Backend**   | Python                 | Core programming language for the backend API and simulator.                           |
|               | FastAPI                | Web framework used to create RESTful APIs for accessing telemetry and other data.      |
|               | PostgreSQL or InfluxDB | Database to store, retrieve, and manage telemetry data.                                |
|               | SQLAlchemy             | Object-relational mapper (ORM) for managing database interactions.                     |
|               | Docker                 | Containerization for deployment and environment consistency.                           |
| **Simulator** | Typer                  | CLI tool for managing command-line interactions with the simulation program.           |
|               | Python                 | Language used for data generation and processing.                                      |
|               | FastAPI                | API calls to the backend to simulate real-time data handling.                          |
|               | Pandas                 | Library for data manipulation and simulation preparation.                              |
|               | NumPy                  | Library for numerical computations in data generation.                                 |
|               | Docker                 | Containerization for environment consistency and deployment.                           |

## Toolin

| Category            | Technology                | Purpose                                                                    |
|---------------------|---------------------------|----------------------------------------------------------------------------|
| **Testing**         | pytest                    | Unit and integration testing across modules.                               |
| **Version Control** | Git + GitHub              | Version control and collaboration platform.                                |
| **Configuration**   | YAML, `.env`              | Configuration files and environment variables management.                  |
| **Alerting**        | Grafana Alerts (optional) | Configurable alerts within Grafana for specific telemetry data thresholds. |
