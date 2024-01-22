#!/bin/bash

# Prompt the user for the IP address to delete
read -p "Enter the IP address to delete from known_hosts: " ip_to_delete

# Check if the known_hosts file exists
known_hosts_file=~/.ssh/known_hosts
if [ ! -f "$known_hosts_file" ]; then
  echo "known_hosts file not found."
  exit 1
fi

# Use sed to remove the specified IP address from known_hosts
sed -i '' -e "/$ip_to_delete/d" "$known_hosts_file"

echo "IP address $ip_to_delete deleted from known_hosts."