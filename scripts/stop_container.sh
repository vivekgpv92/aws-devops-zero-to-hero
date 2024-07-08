#!/bin/bash
set -e

#Get the running container id
container_id=$(docker ps | awk -F " " 'NR>1 {print $1}')

# Stop the running container (if any)
if[ -n "$container_id" ];then
  echo "stopping and removing containers..."
  docker stop $container_id
  docker rm -f $container_id
else
  echo "No containers to stop and remove"
fi
