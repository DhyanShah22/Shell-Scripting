#!/bin/bash

read -p "Enter two numbers to add: " num1 num2

sum=$(echo "$num1 + $num2" | bc -l)

echo "The sum is: $sum"
