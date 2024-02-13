#!/bin/bash

for arg in "$@"
do
	if [ $((arg % 2)) == 0 ]
	then
		sumEven=$((sumEven + $arg))
	else
		sumOdd=$((sumOdd + $arg))
	fi
done

echo "Odd sum is: $sumOdd"
echo "Even sum is: $sumEven"
