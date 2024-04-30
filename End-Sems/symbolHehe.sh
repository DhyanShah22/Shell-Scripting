#!/bin/bash

read -p "Enter the character:" input

if [ -z $input ]; then
	echo "No input provided1"
fi

if [ ${#input} -gt 1 ]; then
	echo "More that one characters"
else

	if [[ $input =~ [A-Z] ]]; then
		echo "Capital Character"
	elif [[ $input =~ [a-z] ]]; then
		echo "Small Character"
	elif [[ $input =~ [0-9] ]]; then
		echo "Digit"
	elif [[ $input =~ [^A-Za-z0-9] ]]; then
		echo "special character detected"
	else
		echo "Invalid Input!"
	fi
fi
