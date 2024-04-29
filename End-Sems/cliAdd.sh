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

echo "The even sum is: $sumEven"
echo "The odd sum is: $sumOdd"
