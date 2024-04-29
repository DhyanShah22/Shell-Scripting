#!/bin/bash

# Prompt the user to enter a directory path
read -p "Enter the directory path: " directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Invalid directory path."
    exit 1
fi

# List all files in the directory and count them
file_count=$(ls -l "$directory" | grep "^-" | wc -l)

# Display the list of files and the total number of files
echo "Files in directory '$directory':"
ls "$directory"
echo "Total number of files: $file_count"

