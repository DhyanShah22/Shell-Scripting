#!/bin/bash

read -p "Enter year: " year

if [ $((year % 4)) == 0 ]
then
	if [ $((year % 100)) == 0 ]
	then
		if [ $((year % 400)) == 0 ]
		then
			echo "Leap"
		else
			echo "Not leap"
		fi
	else
		echo "Leap"
	fi
else
	echo "Not Leap"
fi
