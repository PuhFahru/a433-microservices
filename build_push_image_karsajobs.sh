#!/bin/sh

# Build the backend image from the provided Dockerfile.
docker build -t fahp19/karsajobs:latest .

# Log in to Docker Hub from the current terminal session.
docker login

# Push the backend image to Docker Hub.
docker push fahp19/karsajobs:latest
