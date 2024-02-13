#!/bin/bash

read -p "Enter number to find prime or composite: " n

for ((i = 2 ; i <= n; i++)) 
do
	if [ $((n % i)) == 0 ]
	then
		echo "Composite"
	exit
	fi
done

echo "Prime"
