#!/bin/bash

read -p "Enter your account balance:" bal
touch transaction.txt
while true
do
echo "opetrations"
echo "1. Add transactions"
echo "2. view summary"
echo "3. recent transactions"
echo "4. quit"

read -p "Enter your choice:" n 

case $n in
	1)
	read -p "Enter Operation:(0 for withdraw or 1 for Deposit):" ch
	echo "$ch"
	read -p "Enter Amount:" amt
	if [ "$ch" == "0" ]; then
		bal=$((bal-amt))
		echo  "Withdrawal of $amt successfull" >> transaction.txt
	elif [ "$ch" == "1" ]; then
		bal=$((bal+amt))
		echo "Deposit of $amt successfull" >> transaction.txt
	else
		echo "Invalid operation!"
	fi
	;;
	2)
	echo "Your current bank balance is: $bal"
	;;
	3)
	echo "Your transaction logs:"
	cat transaction.txt
	;;
	4)
	rm transaction.txt
	exit
	;;
	*)
	echo"Invalid choice!"
esac
done




























