#!/bin/bash

echo ${var:-"Apples"}
echo "I love ${var}"

echo ${var:="Oranges"}
echo "But I also love ${var}"

unset var
echo ${var:+"Bananas"}
echo "I hate $var"

var="kiwi"
echo ${var:+"This is default value"}
echo "Healthiest fruit is $var"

echo ${var:?"Print this message"}
echo "I eat ${var}"

