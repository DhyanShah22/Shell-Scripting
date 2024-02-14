#!/bin/bash

# Prompt user for extension
read -p "Enter file extension (e.g., 'txt', 'pdf'): " extension

# Loop through each file in the directory
for file in *; do
    # Check if the file has the desired extension
    if [[ -f $file && $(basename "$file" | grep -o '\.[^.]*$') == ".$extension" ]]; then
        echo "File: $file Path: $(realpath "$file")"
    fi
done

