#!/bin/bash

echo "Network Information Script"
echo "__________________________"

echo "Hostname: $(hostname)"
echo "IP Address: $(hostname -I)"
echo "Network Interfaces: "

if command -v ip &> /dev/null; then
    # ip command exists, run it
    ip link show | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline}'
else
    # ip command not found
    echo "ip command not found. Please install iproute2."
fi
