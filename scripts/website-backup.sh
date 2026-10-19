
#!/bin/bash

# Website source directory
SOURCE="/var/www/html"

# Backup destination
BACKUP_DIR="$HOME/DevOps-Project/Backup"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup filename
BACKUP_FILE="$BACKUP_DIR/website-backup-$TIMESTAMP.tar.gz"

echo "=================================="
echo "       WEBSITE BACKUP"
echo "=================================="

# Check website directory
if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Website directory does not exist: $SOURCE"
    exit 1
fi

# Create Backup folder
mkdir -p "$BACKUP_DIR"

# Compress website files
if tar -czf "$BACKUP_FILE" -C "$SOURCE" .; then
    echo "SUCCESS: Website backup created!"
    echo "Backup file: $BACKUP_FILE"
    du -h "$BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi


