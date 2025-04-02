#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter file or directory to backup: " src
read -p "Enter backup location: " dest

if [ -e "$src" ]; then
    cp -r "$src" "$dest"
    log_action "Backed up $src to $dest"
else
    echo "Error: $src does not exist."
    log_action "Failed to back up $src: Source path does not exist."
fi
