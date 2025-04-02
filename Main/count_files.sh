#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    count=$(find "$dir" -type f | wc -l)
    echo "Number of files: $count"
    log_action "Counted $count files in $dir"
else
    echo "Error: $dir is not a valid directory."
    log_action "Failed to count files in $dir: Directory does not exist."
fi
