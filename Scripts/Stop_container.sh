#!/bin/bash
# Stopping Docker container
set -x

echo "Listing running containers"
docker ps

echo "Check the first running container"
container_id=$(docker ps -q | head -n 1)

if [ -n "$container_id" ]; then
    echo "Remove container $container_id"
    docker rm -f "$container_id"
else
    echo "No container found to remove"
fi

echo "Check remaining containers"
docker ps



