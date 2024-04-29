#!/bin/bash

read -p "Enter the year: " year

if [ $((year % 4)) == 0 ]
then
	if [ $((year % 100)) == 0 ]
	then
		if [ $((year % 400)) == 0 ]
		then
			echo "Leap Year"
		else
			echo "Not a Leap year"
		fi
	else
		echo "Leap Year"
	fi
else
	echo "Not a leap year"
fi


