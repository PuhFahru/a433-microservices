#!/bin/sh

# Build the frontend image from the provided Dockerfile.
docker build -t fahp19/karsajobs-ui:latest .

# Log in to Docker Hub from the current terminal session.
docker login

# Push the frontend image to Docker Hub.
docker push fahp19/karsajobs-ui:latest
