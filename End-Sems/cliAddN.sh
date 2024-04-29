#!/bin/bash

for arg in "$@"
do
	sumTotal=$((sumTotal + $arg))
done

echo "The total sum is: $sumTotal"
