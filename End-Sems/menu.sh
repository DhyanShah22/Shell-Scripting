#!/bin/bash

while true
do
	echo "______Operations______"
	echo "1 - Month"
	echo "2 - Date"
	echo "3 - Currently Logged In"
	echo "4 - Terminal Number"
	echo "5 - Username at specific"
	echo "6 - Exit"

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
		4)
			tty
			;;
		5)
			read -p "Enter Co-ordinates: " x y
			tput cup $x $y
			whoami
			;;
		6)
			exit
			;;
		*)
			echo "Invalid Input"
	esac
	echo ""
done

