#!/bin/bash

# Prompt the user to enter a character or a string
read -p "Enter a character or a string: " input

# Check if more than one character is entered
if [ ${#input} -gt 1 ]; then
    echo "Input contains more than one character."
    exit 1
fi

# Check the type of input
if [[ "$input" =~ [[:upper:]] ]]; then
    echo "Input is a capital letter."
elif [[ "$input" =~ [[:lower:]] ]]; then
    echo "Input is a small letter."
elif [[ "$input" =~ [[:digit:]] ]]; then
    echo "Input is a digit."
elif [[ "$input" =~ [[:space:]] ]]; then
    echo "Input is a whitespace character."
elif [[ "$input" =~ [[:punct:]] && ! "$input" =~ [[:alnum:]] ]]; then
    echo "Input is a special symbol."
else
    echo "Input is neither a capital letter, small letter, digit, whitespace character, nor a special symbol."
fi

