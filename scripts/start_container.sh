#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull sarfraj88/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 sarfraj88/simple-python-flask-app
