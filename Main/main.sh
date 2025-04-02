#!/bin/bash

LOG_FILE="script.log"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

while true; do
    echo "============================="
    echo " File & Directory Manager "
    echo "============================="
    echo "1) List files and directories"
    echo "2) Create a backup"
    echo "3) Count files in a directory"
    echo "4) Display disk usage"
    echo "5) Search for a file"
    echo "6) Compress files or directories"
    echo "7) Exit"
    echo "============================="
    read -p "Choose an option: " choice

    case $choice in
        1) ./list.sh ;;
        2) ./backup.sh ;;
        3) ./count_files.sh ;;
        4) ./disk_usage.sh ;;
        5) ./search.sh ;;
        6) ./compress.sh ;;
        7) echo "Exiting program..." 
           log_action "User exited the program."
           exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
