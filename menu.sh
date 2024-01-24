#!/bin/bash

while true
do
	echo "---------Operations----------"
	echo "1- This Month"
	echo "2 - Today"
	echo "3 - Currently Logged in users"
	echo "4 - Username at coordinated"
	echo "5 - Terminal number"
	echo "6 - Exit"

	read -p "Enter your choice : " operation

	echo ""

	case $operation in

		1)
			cal
			;;
		2)
			date
			;;
		3) 
			echo Currently logged in: 
			who;;
		4)
			read -p "Enter Coordinates: " x y
			tput cup $x $y
			whoami;;
		5)
			echo "Terminal NUmber: "
			tty;;
		6)
			exit;;
		*)
			echo "Invalid input";;
	esac

	echo ""
done
