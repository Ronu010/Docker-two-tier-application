# Docker Two Tier Application

Dockerized two-tier application using Flask, MySQL, and Docker Compose.

## Project Structure
Docker-two-tier-application
│
├── app
│ ├── app.py
│ ├── Dockerfile
│ ├── requirements.txt
│ └── .dockerignore
│
├── docker-compose.yml
└── README.md

## Architecture
          User
            |
            |
    Flask Application
    Docker Container
            |
            |
    Docker Compose Network
            |
            |
    MySQL Database Container
            |
            |
    Docker Volume
    (Persistent Storage)

## Technologies Used

- Python Flask
- MySQL
- Docker
- Docker Compose
- Docker Volumes

## Features

- Containerized Flask application
- MySQL database running in separate container
- Container communication using Docker network
- Persistent database storage using Docker volume
- Optimized image build using .dockerignore

## Run Project

Clone repository:

```bash
git clone https://github.com/Ronu010/Docker-two-tier-application.git

Go inside project:

cd Docker-two-tier-application

Start application:

docker compose up --build
Access Application

Application:

http://localhost:5000

Database Connection Test:

http://localhost:5000/db
Useful Docker Commands

Check running containers:

docker ps

View logs:

docker logs <container_name>

Stop application:

docker compose down
    
