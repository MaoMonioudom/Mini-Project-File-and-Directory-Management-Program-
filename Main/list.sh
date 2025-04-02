#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter directory or file path: " path

if [ -e "$path" ]; then
    ls -l "$path"
    log_action "Listed files in $path"
else
    echo "Error: $path does not exist."
    log_action "Failed to list files in $path: Path does not exist."
fi
