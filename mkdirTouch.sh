#!/bin/bash

echo "System Call Script"
echo "__________________"


read -p "Enter the directory name: " directory

mkdir "$directory"

if [ $? -eq 0 ]
then
	echo "Directory '$directory' created successfully!!"
	
	cd "$directory"

	read -p "Enter the file name: " file

	touch "$file"

	if [ $? -eq 0 ]
	then 
		echo "File '$file' created successfully!!"
	else
		echo "Error in creating file '$file'"
	fi
else
	echo "Error is creating directory '$directory'"
fi
