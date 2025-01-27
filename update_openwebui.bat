@ECHO OFF
:: Update OpenWebUI with Ollama using Docker

:: Step 1: Stop the current container
ECHO Stopping OpenWebUI container...
docker stop open-webui

:: Step 2: Remove the existing container
ECHO Removing OpenWebUI container...
docker rm -f open-webui

:: Step 3: Pull the latest update from the repository
ECHO Pulling the latest OpenWebUI update...
docker pull ghcr.io/open-webui/open-webui:ollama

:: Step 4: Create and run the new container with necessary configurations
ECHO Starting the updated OpenWebUI container...
docker run -d ^
    -p 3000:8080 ^
    --gpus=all ^
    -v ollama:/root/.ollama ^
    -v open-webui:/app/backend/data ^
    --name open-webui ^
    --restart always ^
    ghcr.io/open-webui/open-webui:ollama

:: Inform the user that the update is complete
ECHO Update completed successfully!
ECHO You can access OpenWebUI at http://localhost:3000
PAUSE
