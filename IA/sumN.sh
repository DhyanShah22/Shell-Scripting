#!/bin/bash

read -p "Enter a number: " n

echo "Enter numbers: "

for ((i=0; i < n; i++))
do
	read x
	sum=$((sum + x))
done

echo $sum
