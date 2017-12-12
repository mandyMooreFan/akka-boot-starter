#!/usr/bin/env bash

export DOCKER_CONFIG_PROD=${DOCKER_CONFIG_PROD:-docker-compose.production.yml}
export DOCKER_CONFIG_DEV=${DOCKER_CONFIG_DEV:-docker-compose.development.yml}


dev() {
    docker-compose -f docker-compose.yml -f $DOCKER_CONFIG_DEV "$@"
}

prod() {
    docker-compose -f docker-compose.yml -f $DOCKER_CONFIG_PROD "$@"
}
