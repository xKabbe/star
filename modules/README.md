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
