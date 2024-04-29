#!/bin/bash

read -p "Enter file extension: " extension

for file in *
do
	if [[ -f $file && $(basename "$file" | grep -o '\.[^.]*$') == ".$extension" ]]
       	then
        	echo "File: $file Path: $(realpath "$file")"
    	fi
done
