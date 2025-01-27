#!/bin/bash
# Update OpenWebUI with Ollama using Docker on Linux

# Step 1: Stop and remove the existing container
echo "Stopping and removing OpenWebUI container..."
docker rm -f open-webui

# Step 2: Pull the latest update from the repository
echo "Pulling the latest OpenWebUI update..."
docker pull ghcr.io/open-webui/open-webui:ollama

# Step 3: Create and run the new container with necessary configurations
echo "Starting the updated OpenWebUI container..."
docker run -d \
    -p 3000:8080 \
    --gpus all \
    -v ollama:/root/.ollama \
    -v open-webui:/app/backend/data \
    --name open-webui \
    --restart always \
    ghcr.io/open-webui/open-webui:ollama

# Inform the user that the update is complete
echo "Update completed successfully!"
echo "You can access OpenWebUI at http://localhost:3000"
