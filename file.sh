#!/bin/bash

filename="$1"

if [ -e "$filename" ]; then
    echo "File exists. Number of lines: $(wc -l < "$filename")"
else
    echo "File does not exist. Creating file..."
    touch "$filename"
fi
