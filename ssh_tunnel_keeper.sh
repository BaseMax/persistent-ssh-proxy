#!/bin/bash

# Max Base
# https://github.com/BaseMax/persistent-ssh-proxy
# Keep a SOCKS5 tunnel via SSH in the background alive

SSH_HOST="your.server.com"
SSH_USER="root"
SSH_PASSWORD="yourpassword"
SSH_PORT=22
SOCKS_PORT=9999

if ! command -v ssh &> /dev/null; then
    echo "Error: ssh is not installed. Please install it first."
    exit 1
fi

if ! command -v sshpass &> /dev/null; then
    echo "Error: sshpass is not installed. Please install it first."
    exit 1
fi

while true; do
    sshpass -p "$SSH_PASSWORD" ssh -D $SOCKS_PORT -q -C -N -p $SSH_PORT $SSH_USER@$SSH_HOST
    
    echo "SSH connection lost. Reconnecting in 5 seconds..."
    sleep 5
done
