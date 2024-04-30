#!/bin/bash

max=$1

if [ $# -ne 3 ]
then
	echo "Invali arguements"
	exit 1
fi

for arg in "$@"
do
	if [ $arg -gt $max ]
	then
		max=$arg
	fi
done
echo "The maximum term is: $max"

while [ $max -gt 0 ]
do
	digit=$((max % 10))
	sum=$((sum + digit))
	max=$((max /10))
done

echo "The Sum is: $sum"
