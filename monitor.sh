#!/bin/bash

echo "Starting Bandwidth monitor"
sleep 3
clear
cd /home/karthik/bandwidth-mon/log/
if ls /home/karthik/bandwidth-mon/log/error*.txt 1> /dev/null 2>&1; then
    date
    echo "Link is down / server unreachable"
    echo "Check for logs in log file:"
    ls -l error*.txt | awk '{print $9}'
    echo "Fetching error log"
    sleep 2
    cat /home/karthik/bandwidth-mon/log/error*.txt
    mv /home/karthik/bandwidth-mon/log/bandwidth*.txt /home/karthik/bandwidth-mon/log/safe
    mv /home/karthik/bandwidth-mon/log/temp_error/error*.txt /home/karthik/bandwidth-mon/log/error
    mv /home/karthik/bandwidth-mon/log/error*.txt /home/karthik/bandwidth-mon/log/temp_error
else
    echo "No errors detected"
fi

