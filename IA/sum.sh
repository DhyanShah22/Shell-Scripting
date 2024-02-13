#!/bin/bash

read -p "Enter number of elements: " n
echo "Enter Numbers: "
for ((i=0; i < n; i++))
do
	read x
	sum=$((sum + x))
done
echo $sum

