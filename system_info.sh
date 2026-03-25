#!/bin/bash

echo "===================================="
echo "     MODULE 4 INFO REPORT"
echo "===================================="
echo "Student: J Alexandra Rangel"
echo "Course: ITSC 1316"
echo "Date: $(date)"
echo ""

echo "Current User @ Hostname:"
echo "$(whoami)@$(hostname)"

echo ""
echo -n "CPU Name: "
lscpu | grep "Model name" | cut -d: -f2

echo -n "CPU Speed (MHz): "
lscpu | grep "CPU MHz" | awk '{print $3}'

echo ""
echo -n "Memory (Total | Free): "
free -h | grep "Mem:" | awk '{print $2 " | " $4}'

echo ""
echo -n "Swap (Total | Free): "
free -h | grep Swap | awk '{print $2 " | " $4}'

echo ""
echo "Disk Space (ext4 & xfs partitions):"
df -hT | awk '$2=="ext4" || $2=="xfs" {print $1 " | " $3 " | " $5}'

echo ""
echo -n "IP Address (CIDR): "
ip -4 addr show | grep inet | grep -v "127.0.0.1" | awk '{print $2}'

echo ""
echo "===================================="
echo "         END OF INFO"
echo "===================================="
