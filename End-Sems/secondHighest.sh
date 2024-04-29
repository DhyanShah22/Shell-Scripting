#!/bin/bash

echo "Enter numbers: "
read -r input

if [ -z "$input" ]
then
	echo "Error, no number found"
	exit 1
fi

numbers=($input)

if [ ${#numbers[@]} -lt 2 ]
then
	echo "Error, add 2 or more than 2 numbers"
	exit 1
fi

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -nr))

echo "Entered numbers: ${numbers[*]}"
echo "Highest number: ${sorted_numbers[0]}"
echo "Second-highest number: ${sorted_numbers[1]}"

