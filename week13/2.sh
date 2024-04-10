#!/bin/bash
# List of machines to monitor (replace with your own)
machines=("machine1" "machine2" "machine3")
# SSH username
username="your_username"
# Function to get memory and CPU usage
get_usage() {
local machine=$1
echo "=== $machine ==="
echo "Memory Usage:"
ssh $username@$machine "free -m"
echo "CPU Usage:"
ssh $username@$machine "top -bn1 | grep 'Cpu(s)'"
echo
}
# Iterate over machines and get usage
for machine in "${machines[@]}"; do
get_usage $machine
done
