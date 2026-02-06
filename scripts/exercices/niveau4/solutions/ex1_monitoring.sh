#!/bin/bash
while true; do
    clear
    echo "=== MONITORING $(date +%H:%M:%S) ==="
    echo "CPU: $(top -bn1 | grep "Cpu(s)" | awk '{print $2}')"
    echo "RAM: $(free -h | awk 'NR==2{print $3"/"$2}')"
    echo "Disk: $(df -h / | awk 'NR==2{print $5}')"
    sleep 2
done
