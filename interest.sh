#!/bin/bash

read -p "Enter Principle: " p

read -p "Enter RoI: " r

read -p "Enter Time: " t

si=$(( (p * t * r) / 100))

echo "Simple Interest : \$ $si"

echo "Total amount: \$ $((p + si))"

