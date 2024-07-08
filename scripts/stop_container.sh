#!/bin/bash
set -e

# Get the list of running container IDs
container_id=$(docker ps -q)

#Stop container
docker stop $container_id
docker rm $container_id
