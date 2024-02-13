#!/bin/bash

while true
do
	echo "________Operations_________"
	echo "1 - This month "
	echo "2 - Today's date Info "
	echo "3 - Currently logged in user "
	echo "4 - Terminal number"
	echo "5 - Username at specific coordinates "
	echo "q - exit "

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
			read -p "Enter Coordiantes:" x y
			tput cup $x $y
			whoami
			;;
		5)
			tty
			;;
		q)
			exit
			;;
		*)
			echo "Invalid input"
	esac
	echo ""
done
