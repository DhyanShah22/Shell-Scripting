#!/bin/bash

read -p "Enter a number: " number

if [ $((number % 2 )) == 0 ]
then
	echo "Even"
else
	echo "Odd"
fi

