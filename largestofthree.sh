#!/bin/bash

read -p "Enter Three numbers: " a b c

echo -n "The largest number is: "

# Use arithmetic evaluation to treat variables as integers
if ((a > b && a > c))
then
    echo $a
elif ((b > c))
then
    echo $b
else
    echo $c
fi

