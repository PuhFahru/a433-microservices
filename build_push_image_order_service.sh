#!/bin/sh

# Build the order service image from the Dockerfile in this directory.
docker build -t fahp19/order-service:latest .

# Log in to Docker Hub before pushing the image.
docker login

# Push the order service image so Docker Compose can pull it from the registry.
docker push fahp19/order-service:latest
