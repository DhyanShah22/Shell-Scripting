#!/bin/bash

echo "File Backup Script"
echo "__________________"

read -p "Enter file to backup: " source_file
read -p "Enter the destination: " dest

cp "$source_file" "$dest/backup3_$(basename $source_file)"

echo "Backup successful!!"

