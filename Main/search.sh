#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

read -p "Enter directory path: " dir
read -p "Enter filename or extension to search: " name

if [ -d "$dir" ]; then
    find "$dir" -name "$name"
    log_action "Searched for $name in $dir"
else
    echo "Error: $dir is not a valid directory."
    log_action "Failed to search for $name in $dir: Directory does not exist."
fi
