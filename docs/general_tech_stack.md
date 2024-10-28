# General Tech Stack

This document outlines the technology stack for each module of the project:

* **Dashboard**
* **Backend**
* **Simulator**.

![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

### **Project Modules and Technology Stack**

| Module        | Technology                      | Purpose                                                                                |
|---------------|---------------------------------|----------------------------------------------------------------------------------------|
| **Dashboard** | Grafana                         | Data visualization platform used for displaying live and historical telemetry data.    |
|               | PostgreSQL, MongoDB or InfluxDB | Primary database for storing telemetry data from both real flights and simulated data. |
|               | Docker                          | Containerization of the Dashboard for easy deployment and scalability.                 |
| **Backend**   | Python                          | Core programming language for the backend API and simulator.                           |
|               | FastAPI                         | Web framework used to create RESTful APIs for accessing telemetry and other data.      |
|               | PostgreSQL, MongoDB or InfluxDB | Database to store, retrieve, and manage telemetry data.                                |
|               | SQLAlchemy                      | Object-relational mapper (ORM) for managing database interactions.                     |
|               | Docker                          | Containerization for deployment and environment consistency.                           |
| **Simulator** | Typer                           | CLI tool for managing command-line interactions with the simulation program.           |
|               | Python                          | Language used for data generation and processing.                                      |
|               | FastAPI                         | API calls to the backend to simulate real-time data handling.                          |
|               | Pandas                          | Library for data manipulation and simulation preparation.                              |
|               | NumPy                           | Library for numerical computations in data generation.                                 |
|               | Docker                          | Containerization for environment consistency and deployment.                           |

![green-divider](https://user-images.githubusercontent.com/7065401/52071924-c003ad80-2562-11e9-8297-1c6595f8a7ff.png)

### **Overall Tools**

| Category            | Technology                | Purpose                                                                    |
|---------------------|---------------------------|----------------------------------------------------------------------------|
| **Testing**         | pytest                    | Unit and integration testing across modules.                               |
| **Version Control** | Git + GitHub              | Version control and collaboration platform.                                |
| **Documentation**   | MkDocs                    | Generates and manages project documentation.                               |
| **Configuration**   | YAML, `.env`              | Configuration files and environment variables management.                  |
| **Alerting**        | Grafana Alerts (optional) | Configurable alerts within Grafana for specific telemetry data thresholds. |

![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

This tech stack offers a modular approach, allowing each component to be developed, tested, and deployed independently while maintaining cohesive integration between modules.
