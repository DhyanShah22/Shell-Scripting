#!/bin/bash

read -p "Enter the number: " n

if [ $(( n % 2 )) == 0 ]
then
	echo "Even"
else
	echo "Odd"
fi

