#!/bin/bash

read -p "Enter the num: " num

rev=""

while [ $num -gt 0 ]
do
	digit=$((num % 10))

	rev="$rev$digit"

	num=$((num / 10))
done

echo "Reverse num is: $rev"
