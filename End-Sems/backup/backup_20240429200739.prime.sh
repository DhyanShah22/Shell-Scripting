#!/bin/bash

read -p "Enter Number: " n

for ((i = 2; i < n; i++))
do
	if [ $((n % i)) == 0 ]
	then
		echo "Composite"
		exit
	fi
done

echo "Prime"

