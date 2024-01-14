#!/bin/bash

number_one () {
	echo "This is a first function"
	number_two ()
}

number_two () {
	echo "This is the second function"
}

number_one
