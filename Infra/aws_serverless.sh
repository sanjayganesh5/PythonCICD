#!/bin/bash

# Exit script on any error
set -e

echo "Starting Serverless Deployment..."

# Verify AWS CLI is installed
if ! command -v aws &> /dev/null
then
    echo "Error: AWS CLI is not installed or not found in PATH."
    exit 1
fi

sls --version

# Verify Serverless Framework is installed
if ! command -v sls &> /dev/null
then
    echo "Error: Serverless Framework (sls) is not installed."
    exit 1
fi

# Install dependencies
echo "Installing project dependencies..."
npm install

# Deploy application using Serverless Framework
echo "Deploying application with Serverless..."
sls deploy

echo "Deployment completed successfully!"
