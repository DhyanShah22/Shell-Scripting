#!/bin/bash

echo "System Report: $(date)"
echo "---------------------"

# Display system information
uname -a

# Display disk space usage
df -h

# Display memory usage
free -h
