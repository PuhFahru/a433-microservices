#!/bin/sh

# Build the local Docker image with the required name and version tag.
docker build -t item-app:v1 .

# Show the list of local images after the build process finishes.
docker image ls

# Retag the image so it matches the Docker Hub repository format.
docker tag item-app:v1 fahp19/item-app:v1

# Log in to Docker Hub using the current terminal session.
docker login

# Push the tagged image to Docker Hub.
docker push fahp19/item-app:v1
