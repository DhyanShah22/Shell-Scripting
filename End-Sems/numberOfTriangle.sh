#!/bin/bash

read -p "Enter the number of rows" rows

for ((i = 0; i <= rows; i++))
do
	for ((j = 0; j <= i; j++))
	do
		echo -n "$j "
	done
	echo ""
done
