#!/bin/bash

echo "File Backup System"
echo "__________________"

read -p "Enter the file to backup: " source_file
read -p "Enter the backup destination: " destination
cp "$source_file" "$destination/backup_$(date +%Y%m%d%H%M%S).$(basename $source_file)"
echo "Backup succesfull!!"

