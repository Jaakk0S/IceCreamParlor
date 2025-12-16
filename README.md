# Ice-cream Parlor - RESTful Microservices Demo App

Jaakko Saaristo 2025

Ice-cream Parlor is a demo business application and a microservice technology showcase.
The application is composed of a frontend and an event-based backend of several _scalable_ microservices that are all built with different technologies.

## Technologies featured:

1. OpenAPI specification
2. Docker
3. React
4. Nginx
5. Spring Boot, Spring Web, Spring JPA
6. Node.JS
7. Python
8. RabbitMQ
9. PostgreSQL

### Architecture

![Architecture](./resources/icecreamparlor-architecture.png)

### Security

Inter-service communication is implemented over RabbitMQ and plain HTTP (no SSL). Public access is only allowed
through a HTTP reverse proxy (Nginx).

HTTP endpoints implement CORS policy.   

RabbitMQ and MySQL use password authentication.

Obviously, SSL is missing.


## Requirements

- Linux-like environment (Linux, Mac or Windows with e.g. Git Bash)
- Docker
- Docker Desktop is running

Note: Docker requires virtualization support at system level. This is a configuration option in BIOS.
Docker Desktop installation will prompt you to this.

## Building

Run

```
sh build-microservices
```

The build script will pull all custom built microservices from my Github and build them into Docker images in the local Docker repository.

## Configuring

You need to provide a couple of passwords. You can use any arbitrary values for the passwords, as this is a demo application. They will be
baked into the services and used to authenticate inter-service communication.

Create a copy of the `.env.template` file, rename it to `.env` and make sure it is in the same directory as the template.
Now edit this file and fill in the blanks.

## Running and stopping

Run

```
docker compose up
```

This will run all microservices in Docker Desktop using configuration in `docker-compose.yaml`, and aggregate all log output into a single stream.

The full service composition contains the custom microservices built in the previous step, and
some publicly available service images.