bash 
#!/bin/bash

# --- CONFIGURATION ---
# This must be run as sudo to properly complete
# The folder you want to backup
SOURCE_DIR="/docker/"
# Where to save the backup zip
BACKUP_DEST="/backups/"
# Filename format: backup_YYYY-MM-DD.zip - NOTE TO ADD SYSTEM NAME FOR CLARITY - add script to github 
DATE=$(date +"%Y-%m-%d")
FILENAME="statler_backup_$DATE.zip"

# 1. Stop all running containers
echo "Stopping all Docker containers..."
# docker ps -q returns only IDs of running containers
CONTAINERS=$(docker ps -q)

if [ -z "$CONTAINERS" ]; then
    echo "No containers are currently running."
else
    docker stop $CONTAINERS
    echo "All containers stopped."
fi

# 2. Zip the folder
echo "Creating backup: $FILENAME..."
# Ensure the backup destination exists
mkdir -p "$BACKUP_DEST"
zip -r "$BACKUP_DEST/$FILENAME" "$SOURCE_DIR"

# 3. Restart all containers
echo "Restarting containers..."
# Restarts all containers, including those that were already stopped before the script ran
# If you only want to restart what was previously running, use $CONTAINERS instead of -aq
docker start $(docker ps -aq)

echo "Maintenance complete. Backup saved to $BACKUP_DEST/$FILENAME"
