#!/bin/bash

echo "User Management System"
echo "______________________"
echo "a) Add User"
echo "b) Remove User"
echo "c) List User"

read -p "Select an option: " choice

case $choice in
	a)
		read -p "Enter Username: " new_user
		sudo useradd $new_user
		echo "User $new_user added succesfully!!"
		;;
	b)
		read -p "Enter Username to remove: " remove_user
		sudo userdel -r $remove_user
		echo "User $remove_user removed succesfully!!"
		;;
	c)
		echo "List of users:"
		cut -d: -f1 /etc/passwd
		;;
	*)
		echo "Invalid Option!!"
		;;
esac
