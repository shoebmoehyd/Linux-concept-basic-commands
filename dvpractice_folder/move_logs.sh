#!/bin/bash

# Directory name
backup_dir="backup"

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir "$backup_dir"
    echo "Directory '$backup_dir' created."
else
    echo "Directory '$backup_dir' already exists."
fi

# Check if any .log files exist
shopt -s nullglob  # Ensures the loop doesn't run if no .log files
log_files=(*.log)

if [ ${#log_files[@]} -eq 0 ]; then
    echo "No .log files found to move."
else
    # Move all .log files to backup directory
    mv *.log "$backup_dir"/
    echo "Moved ${#log_files[@]} .log file(s) to '$backup_dir'."
fi
