#!/bin/bash

while true
do
	echo "Calculator"
	echo "__________"
	echo "1- Addition"
	echo "2- Subtraction"
	echo "3- Product"
	echo "4- Division"
	echo "5- Remainder"
	echo "6- Quit"

	read -p "Enter your choice: " choice
	read -p "Enter the two operande: " num1 num2

	case $choice in
		1)
			echo "Sum: $(($num1 + $num2))"
			;;
		2)
			echo "Difference: $(($num1 - $num2))"
			;;
		3)
			echo "Product: $(($num1 * $num2))"
			;;
		4)
			if [ $(($num2)) -eq 0 ]
			then
				echo "Cannot divide by Zero."
			else
				echo "Quotient: $(($num1/$num2))"
			fi
			;;
		5)
			echo "Remainder: $(($num1 % $num2))"
			;;
		6)
			exit
			;;
		*)
			echo "Invalide Input"
			;;
	esac
done

