#!/bin/bash

read -p "Enter the charecter or string: " input

if [ ${#input} -gt 1 ]
then
	echo "Input has more then one charecter."
	exit 1
fi

if [[ "$input" =~ [[:upper:]] ]]
then
	echo "Capital Letter"
elif [[ "$input" =~ [[:lower:]] ]]
then
	echo "Small letter"
elif [[ "$input" =~ [[:digit:]] ]]
then
	echo "Digit"
elif [[ "$input" =~ [[:punct:]] && ! "$input" =~ [+-\(\)%^&*]) ]]
then
	echo "Speical Symbol"
else
	echo "Invalid Char"
fi
