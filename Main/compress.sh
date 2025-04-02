#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter file or directory to compress: " src
read -p "Enter compressed filename (without extension): " dest

if [ -e "$src" ]; then
    tar -czf "$dest.tar.gz" "$src"
    log_action "Compressed $src into $dest.tar.gz"
else
    echo "Error: $src does not exist."
    log_action "Failed to compress $src: Source path does not exist."
fi
