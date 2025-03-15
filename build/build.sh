#!/bin/bash

# Create the target directory if it doesn't exist or empty it
mkdir -p COPY_ROOT_99/opt/kohya_ss
rm -rf COPY_ROOT_99/opt/kohya_ss/*

# Copy sd-scripts to the docker build context
echo "Copying sd-scripts to build context..."

rsync -av --exclude='.git' --exclude='venv' --exclude='__pycache__' --exclude='runs' --exclude='*.db' ../../sd-scripts/* COPY_ROOT_99/opt/kohya_ss/

# Build the docker image
echo "Building docker image..."
docker build . -t xcession2k/kohya_rest:latest

# Clean up by removing the copied files
echo "Cleaning up..."
rm -rf COPY_ROOT_99/opt/kohya_ss/*

echo "Build complete!" 

echo "Pushing..."
docker login
docker push xcession2k/kohya_rest:latest

echo "Push complete!"