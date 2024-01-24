#!/bin/bash

while true
do
	echo "-----Calculator-----"
	echo "1 - Addition "
	echo "2 - Subtraction "
	echo "3 = Multiplication "
	echo "4 - Division "
	echo "5 - Exit "

	read -p "Enter your choice: " operation
	read -p "Enter 2 operands: " num1 num2

	case $operation in
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
				echo "Cannot divide by zero."
			else
				echo "Quotient: $(($num1/$num2))"
			fi
			;;
		5)
			exit
			;;
		*)
			echo "Invalid input"
			;;
	esac
done

