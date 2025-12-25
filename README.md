# Ice-cream Parlor - RESTful Microservices Demo App

Jaakko Saaristo 2025

Ice-cream Parlor is a demo business application and a microservice technology showcase.
The application is composed of a frontend and an event-based backend of several _scalable_ microservices that are all built with different technologies.

## Technical Aspects

### Technologies featured:

1. OpenAPI specification
2. Docker, Docker Compose
3. React
4. Nginx
5. Spring Boot, Spring Web, Spring JPA
6. Node.JS
7. Python
8. RabbitMQ
9. PostgreSQL

### Architecture

![Architecture](./resources/icecreamparlor-architecture.png)

### API Specification

The app uses an internal API that implements an OpenAPI specification. The API is blocked from external network traffic, but 
the API specification can be browsed and tested through the Swagger page that is public.

You can access the Swagger *from the link in the pager footer*.

### Security

Inter-service communication is implemented over RabbitMQ and plain HTTP (no SSL). Public access is only allowed
through a HTTP reverse proxy (Nginx).

HTTP endpoints implement CORS policy.   

RabbitMQ and MySQL use password authentication.

Obviously, SSL is missing.


## Project Structure

This repository is an *aggregator* project of the following microservice repositories:
- IceCreamParlor
- IceCreamParlor-MenuService
- IceCreamParlor-OrderService
- IceCreamParlor-Processing
- icecreamparlor-ui

To run Icecream-parlor locally you only need to pull this repository
and the build framework will handle the rest.

## Requirements

To run Ice-cream Parlor on your local machine, you need the following.

- Linux-like environment (Linux, Mac or Windows with e.g. Git Bash)
- Docker
- Docker Desktop is running

Note: Docker requires virtualization support at system level. This is a configuration option in BIOS.
Docker Desktop installation will prompt you to this.

## Building

The build script will pull all custom built microservices from my Github and build them into Docker images in the local Docker repository.

To build the app,
1. On Linux, run `./build-microservices`
2. On Windows/Git Bash, run `sh build-microservices`

## Configuring

Before running the app, you need to provide a couple of passwords. You can use any arbitrary values for the passwords, as this is a demo application.
The passwords will be baked into the services and used to authenticate inter-service communication.

1. Create a copy of the `.env.template` file, in the same directory as the template
2. Rename the file to `.env` ("dot env", notice the filename starts with a dot)
3. Edit the `.env` file and fill in the blanks

## Running and stopping

### Running

To start the app, run

```
docker compose up
```

This will run all microservices in Docker Desktop using configuration in `docker-compose.yaml`, and aggregate all log output into a single stream.

The full service composition contains the custom microservices built in the previous step, and
some publicly available service images.

### Stopping

Go to Docker Desktop. Click on the tab "Containers". Click the stop button on the top level service "icecreamparlor".

## Using the App

Direct your chosen browser to http://localhost.

Note: The service doesn't use SSL at the moment, so it's up to your browser if this is OK or not. 
