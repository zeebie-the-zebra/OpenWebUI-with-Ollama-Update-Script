# OpenWebUI-with-Ollama-Update-Script for Windows
A BAT script that automates the process of updating OpenWebUI with Ollama using **Docker/ Docker Desktop on Windows**

**Explanation of the Script:**

1. Stopping and Removing the Container: The script first stops the running container to ensure a clean shutdown, then removes it using docker rm -f which forces removal even if the container is still running.

2. Pulling Updates: It pulls the latest version of the OpenWebUI image tagged with ollama.

3. Running the New Container: The script runs the new container with:
   -d for detached mode.
   Port mapping from host port 3000 to container's 8080.
   GPU support using all available GPUs.
   Mounting named volumes ollama and open-webui to preserve data.
   Automatic restart policy.

5. User Notification: After completing the update, the script informs the user that OpenWebUI is accessible at http://localhost:3000.

**Instructions for Use:**

Save this script as update_openwebui.bat.
Make sure Docker Desktop is running and you have access to the necessary repositories.
Run the script from an elevated command prompt if required by your system setup.


# OpenWebUI-with-Ollama-Update-Script for Linux
A shell script (.sh) that performs the same tasks as the Windows BAT script but adapted for a Linux environment.

**Instructions for Use:**
1. Save this script as update_openwebui.sh on your Linux system.

2. Make the Script Executable
   Run the following command to make the script executable: chmod +x update_openwebui.sh

4. Run the Script
   ./update_openwebui.sh

If you encounter permission issues, you may need to run it with sudo:
   sudo ./update_openwebui.sh

Note: I do not primarily use Linux. This has been adpated to the best of my ability, it is your responisiblity to evaluate and double check the code before runtime.
