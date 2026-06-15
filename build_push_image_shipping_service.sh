#!/bin/sh

# Build the shipping service image from the Dockerfile in this directory.
docker build -t fahp19/shipping-service:latest .

# Log in to Docker Hub before pushing the image.
docker login

# Push the shipping service image so Docker Compose can pull it from the registry.
docker push fahp19/shipping-service:latest
