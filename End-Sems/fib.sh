#!/bin/bash

read -p "Enter number of terms: " n

a=0
b=1

for (( i = 0; i < n; i++))
do
	echo -n "$a "
	c=$((a + b))
	a=$b
	b=$c
done

echo ""
