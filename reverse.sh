#!/bin/bash

read -p "Enter a number: " number

reverse=""

while [ $number -gt 0 ]
do
	digit=$(( $number % 10 ))

	reverse="$reverse$digit"

	number=$(( $number / 10 ))
done

echo "Reverse: $reverse"

