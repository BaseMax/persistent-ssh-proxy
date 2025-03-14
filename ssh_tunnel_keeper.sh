#!/bin/bash

# Max Base
# Keep a SOCKS5 tunnel via SSH in the background alive

if ! command -v ssh &> /dev/null; then
    echo "Error: ssh is not installed. Please install it first."
    exit 1
fi

if ! command -v sshpass &> /dev/null; then
    echo "Error: sshpass is not installed. Please install it first."
    exit 1
fi

while true; do
    sshpass -p "******" ssh -D 9999 -q -C -N root@******
    
    echo "SSH connection lost. Reconnecting in 15 seconds..."
    sleep 5
done
