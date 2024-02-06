#!/bin/bash

read -p "Enter the year: " year

if [ $(($year % 4)) -eq 0 ]
then 
	if [ $(($year % 100)) -eq 0 ]
	then
		if [ $(($year % 400)) -eq 0 ]
		then
			echo "This is a leap year."
		else
			echo "Not a leap"
		fi
	else
		echo "Leap"
	fi
else
	echo " No Leap"
fi

