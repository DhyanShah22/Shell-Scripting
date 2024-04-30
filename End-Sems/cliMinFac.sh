#!/bin/bash

if [ $# -ne 3 ]
then
	"Invalid arguements"
	exit 1
fi

min=$1

for arg in "$@"
do
	if [ $arg -lt $min ]
	then
		min=$arg
	fi
done

echo "The minimum of three is: $min"

fact=1

for ((i = 1; i <= $min; i++))
do
	fact=$((fact * i))
done

echo "The factorial is: $fact"

