#!/bin/bash

max=$1
min=$1

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

echo "The maximum: $max"
echo "The minimum: $min"
