# Metrics

This module provides the visualization stack for the project.
It uses Grafana to visualize telemetry data, both real-time and historical, from the weather balloon project.
This module relies on the `DB` module for data storage.

## Purpose

* **Grafana**: Display real-time and historical telemetry data from the weather balloon project.
               This allows for monitoring the balloon's telemetry during the flight and reviewing data after the project is complete.
* **Data Visualization**: Provides customizable dashboards for data visualization and supports real-time data streaming as well as historical data review.

## Tech Stack

| Technology | Purpose                                                    |
|------------|------------------------------------------------------------|
| Grafana    | Visualization of live and historical telemetry data        |
| Docker     | Containerization for consistent deployment and scalability |

## Usage

Ensure the `DB` module is set up and running before launching the Metrics module.
Grafana will connect to the databases in the `DB` module to retrieve telemetry data.

Refer to the Docker Compose file in this directory to set up and run the Metrics module.
