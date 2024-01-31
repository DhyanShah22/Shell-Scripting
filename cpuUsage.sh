#!/bin/bash

echo "System Resourse Manager"
echo "_______________________"

echo "CPU Usage: $(top -b -n 1 | grep '%Cpu(s):' | awk '{print $2}')"

echo "Memmory usage: $(free -m | grep 'Mem:' | awk '{print $3}') MB / $(free -m | grep 'Mem:' | awk '{print $2}') MB"


