# Ice-cream Parlor - RESTful Microservices Demo App

Jaakko Saaristo 2025

Ice-cream Parlor is a demo business application and a microservice technology showcase.
The application is composed of several _scalable_ microservices that are built with different technologies.

## Technologies featured:

1. OpenAPI specification
2. Nginx
3. Spring Boot, Spring Web, Spring JPA
4. Node.JS
5. Python
6. Docker
7. RabbitMQ
8. PostgreSQL
9. React

## Requirements

- Docker
- Docker Desktop is running

## Building

The automated build script performs the following steps.
1. Create a build container with necessary build tools
2. Pull each microservice source repository from Github
3. Build each microservice (compile, test, package)
4. Containerize each microservice into a Docker image in the local repository

### Linux
sh build-microservices

### Windows
