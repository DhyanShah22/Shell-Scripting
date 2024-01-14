#!/bin/bash

Hello () {
	echo "Hello, $1 $2"

	return 20
}

Hello Dhyan Shah!

ret=$?

echo "Return value is $ret"
