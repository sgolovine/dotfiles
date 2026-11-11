#!/usr/bin/env bash
# sends a file over scp to my home server


# Server configuration
SERVER_IP="192.168.68.62"
SERVER_USER="sgolovine"
BASE_DIR="/home/sgolovine/uploads"

# Validate arguments
if [ $# -ne 1 ]; then
    echo "Usage: $(basename "$0") <file>"
    exit 1
fi

FILE="$1"

# Verify file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

# Extract filename (without local directory)
FILENAME=$(basename "$FILE")

# Upload file
echo "Uploading $FILENAME to $SERVER_IP..."

scp "$FILE" "${SERVER_USER}@${SERVER_IP}:${BASE_DIR%/}/${FILENAME}"

if [ $? -eq 0 ]; then
    echo "Upload complete!"
else
    echo "Upload failed."
    exit 1
fi