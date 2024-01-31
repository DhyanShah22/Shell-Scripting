#!/bin/bash

echo "Network Information Script"
echo "__________________________"

echo "Hostname : $(hostname)"

echo "IP Address: $(hostname -I)"

echo "Network Interface: $(ifconfig)"
