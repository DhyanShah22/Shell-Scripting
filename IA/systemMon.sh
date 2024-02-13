#!/bin/bash

echo "System Monitor"
echo "______________"

echo "CPU Usage:$(top -b -n 1 | grep '%Cpu(s):' | awk '{print $2}')"
echo "Memory:$(free -m | grep 'Mem:' | awk '{print $3}')MB / $(free -m | grep 'Mem:' | awk '{print $2}')MB"
