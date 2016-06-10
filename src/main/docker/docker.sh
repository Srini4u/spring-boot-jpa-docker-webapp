#!/usr/bin/env bash

# Don't execute this, these are the commands that have been executed in the tutorial, just as resource.
# To run the application use Docker compose.
docker run -d \
    --name demo-mysql \
    -e MYSQL_ROOT_PASSWORD=admin \
    -e MYSQL_DATABASE=world \
    -e MYSQL_USER=root \
    -e MYSQL_PASSWORD=admin \
    mysql:latest
docker run -d \
    --name spring-boot-jpa-docker-webapp \
    --link demo-mysql:mysql \
    -p 9090:9090 \
    g00glen00b/spring-boot-jpa-docker-webapp
