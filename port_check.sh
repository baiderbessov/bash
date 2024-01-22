#!/bin/bash

# Define host and port
HOST="hostname"
PORT="443"

# Function to check port status
check_port() {
    nc -z -w 2 "$HOST" "$PORT"
    return $?
}

# Function to display the result in the terminal
display_result() {
    if check_port; then
        echo "Port $PORT on $HOST is reachable"
    else
        echo "Port $PORT on $HOST is NOT reachable"
    fi
}

# Infinite loop to check the port every minute
while true; do
    display_result
    sleep 60  # Sleep for 60 seconds before checking again
done