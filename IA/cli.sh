#!/bin/bash

min=$1
max=$1

for arg in "$@"
do
	if [ $arg -gt $max ]
	then
		max=$arg
	fi
	if [ $arg -lt $min ]
	then
		min=$arg
	fi
done

echo "Maximum is: $max"
echo "Minimum is: $min"

