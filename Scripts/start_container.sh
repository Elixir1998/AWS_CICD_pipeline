#!/bin/bash
set -x

## Pull the docker image for the application
echo "Pulling the image from a public repository"
docker pull manlineroot12/simple-pyton-app:latest

## Run the pulled image
echo "Running docker container with the image"
docker run -d -p 5000:5000 manlineroot12/simple-pyton-app:latest
