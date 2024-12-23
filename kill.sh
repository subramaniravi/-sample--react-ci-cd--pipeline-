#!/bin/bash

echo "Stopping and removing the running container..."

# Stop the container
docker stop my-node-container || true

# Remove the container
docker rm my-node-container || true

echo "Clean-up complete!"

