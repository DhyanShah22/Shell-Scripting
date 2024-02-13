#!/bin/bash

while true
do
	echo "User management system"
	echo "______________________"
	echo "a) Add User"
	echo "b) Remove User"
	echo "c) List User"
	echo "q) exit"

	read -p "Select an option: " option

	case $option in
		a)
			read -p "Enter Username: " new_user
			sudo useradd $new_user
			echo "User $new_user added succesfully!!"
			;;
		b)
			read -p "Enter username to remove: " del_user
			sudo userdel $del_user
			echo "User $del_user removed succesfully!!"
			;;
		c)
			echo "List of users:"
			cut -d: -f1 /etc/passwd
			;;
		q)
			exit
			;;
		*)
			echo "Invalid input"
			;;
	esac
done



