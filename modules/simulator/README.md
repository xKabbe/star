# Simulator

The simulator module provides a CLI tool that simulates telemetry data for testing purposes.
Using Typer, it can generate data in real-time or as stored datasets, which can then be used by the backend and metrics module for testing and visualization.

## Purpose

* **Data Simulation**: Generates synthetic telemetry data for testing and validating the functionality of the backend and metrics module.
* **Real-Time and Historical Data**: Offers options to simulate both live data streams and historical datasets, enabling comprehensive testing scenarios.

## Tech Stack

| Technology | Purpose                                                      |
|------------|--------------------------------------------------------------|
| Python     | Core programming language for simulation development         |
| Typer      | CLI tool for managing command-line interactions              |
| FastAPI    | API calls to the backend to simulate real-time data handling |
| Pandas     | Library for data manipulation and simulation preparation     |
| NumPy      | Library for numerical computations in data generation        |
| Docker     | Containerization for consistent deployment and environment   |

## Usage

To use the simulator, execute the command-line interface provided by Typer.
You can configure options for data generation, such as the type of data (real-time or historical) and the parameters for simulation.

Refer to the CLI documentation for detailed instructions on how to run and configure the simulator.
