#!/bin/bash

while true
do
	echo "User Management System"
	echo "______________________"
	echo "a) Add User"
	echo "b) Del User"
	echo "c) List User"
	echo "q) Exit"

	read -p "Enter the choice: " choice

	echo ""

	case $choice in
		a)
			read -p "Enter User: " user_add
			sudo useradd $user_add
			echo "User $user_add added succesfully"
			;;
		b)
			read -p "Enter User to remove: " del_user
			sudo userdel $del_user
			echo "User $del_user removed successfully!!"
			;;
		c)
			echo "The user list is: "
			cut -d: -f1 /etc/passwd
			;;
		q)
			exit
			;;
		*)
			echo "Invalid Input"
			;;
	esac
done
