#!/bin/bash

read -p "Enter number for table: " n

for i in {1..10}
	do
		echo "$n * $i = $((n * i))"
	done

