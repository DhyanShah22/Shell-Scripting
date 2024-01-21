#!/bin/bash

echo "Cleaning up the directory: $(pwd)"
echo "----------------------------------"

# Remove log files older than 7 days
find . -name "*.log" -mtime +7 -exec rm {} \;

echo "Cleanup complete!"
