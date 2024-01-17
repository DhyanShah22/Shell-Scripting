#!/bin/bash

read -p "Enter Size: " n

echo "Enter Numbers: "

for((i=0; i < n; i++))
do
	read x
	sum=$((sum + x))
done

echo $sum
