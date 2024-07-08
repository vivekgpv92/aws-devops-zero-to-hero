#!/bin/bash
set -e

#Get the running container id
container_ids=$(docker ps -q)

# Stop the running container (if any)
if [ -n "$container_ids" ]; then
  echo "Stopping and removing containers..."
  docker stop $container_ids
  docker rm $container_ids
else
  echo "No containers to stop and remove"
fi
