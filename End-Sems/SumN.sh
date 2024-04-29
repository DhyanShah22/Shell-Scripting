#!/bin/bash

read -p "Enter the number of elements: " n

echo "Enter numbers: "

for ((i = 0; i < n; i++))
do
	read x
	Sum=$((Sum + x))
done

echo $Sum
