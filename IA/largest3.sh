#!/bin/bash

read -p "Enter 3 numbers: " a b c

if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo $a
	else
		echo $c
	fi
else
	if [ $b -gt $c ]
	then
		echo $b
	else
		echo $c
	fi
fi

