#!/bin/bash
echo "Starting"
clear
echo "Bandwidth Monitor reading in progress"
date

nodevar=$(iperf -c 10.0.0.1 | wc -l)

if [ "$nodevar" -eq 7 ]; then

    date >> log/bandwidth_h3.txt
    echo "################################################################" >> log/bandwidth_h3.txt
    date >> log/bandwidth_h3.txt
    iperf -c 10.0.0.1 >> log/bandwidth_h3.txt
    echo "################################################################" >> log/bandwidth_h3.txt
    
else

    date >> log/error_bandwidth_h3.txt
    echo "################################################################" >> log/error_bandwidth_h3.txt
    echo "Link is down / server unreachable">> log/error_bandwidth_h3.txt
    echo "################################################################" >> log/error_bandwidth_h3.txt
    
fi
