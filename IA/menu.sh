#!/bin/bash

while true
do
	echo "_________Operations_________"
	echo "1 - This month"
	echo "2 - Today's Date Info"
	echo "3 - Currently Logged In users"
	echo "4 - Terminal NUmber"
	echo "5 - Username at specific coordinates"
	echo "q - Exit"

	read -p "Enter your choice: " choice

	echo ""

	case $choice in
		1)
			cal
			;;
		2)
			date
			;;
		3)
			who
			;;
		5)
			read -p "Enter Coordinates: " x y
			tput cup $x $y
			whoami
			;;
		4)
			tty
			;;
		q)
			exit
			;;
		*)
			echo "Invalid Input"
	esac
	echo ""
done

