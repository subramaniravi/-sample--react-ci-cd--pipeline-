#!/bin/bash

echo "Building Docker image..."
docker pull node:14-alpine
docker build -t my-node-app .

echo "Running the application on port 3000..."
docker run -d --name my-node-container -p 3000:3000 my-node-app

echo "Application is deployed. Access it at http://localhost:3000"

docker logs -f my-node-container
