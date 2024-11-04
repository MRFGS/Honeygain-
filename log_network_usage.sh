#!/bin/bash

# Define the log file location
LOG_FILE="/var/log/honeygain_network_usage.log"

# Create the log file and add a header
echo "Timestamp, Downloaded, Uploaded" > "$LOG_FILE"

# Monitor network usage every 60 seconds
while true; do
    # Get network stats for the container
    STATS=$(cat /proc/net/dev | grep "eth0" | awk '{print $2","$10}')
    
    # Record timestamp and network stats to the log file
    echo "$(date +'%Y-%m-%d %H:%M:%S'), $STATS" >> "$LOG_FILE"
    
    # Wait for 60 seconds
    sleep 60
done
