#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    du -sh "$dir"
    log_action "Checked disk usage for $dir"
else
    echo "Error: $dir is not a valid directory."
    log_action "Failed to check disk usage for $dir: Directory does not exist."
fi
