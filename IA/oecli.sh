#!/bin/bash

oddS=""
evenS=""

for arg in "$@"
do
	if [ $(($arg % 2 )) -eq 0 ]
	then
		oddS=$(($oddS + $arg))
	else
		evenS=$(($evenS + $arg))
	fi
done

mul=$(($evenS * $oddS))

echo $mul
