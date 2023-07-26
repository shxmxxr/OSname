#!/bin/bash

#Display internal IP address.

echo 'Your internal IP address is:' 
ifconfig | grep broadcast | awk '{print $2}'
echo ''
#Display external IP address.
echo 'Your external IP address is:'
myip= curl ifconfig.co
echo ''
#Display default gateway.
echo 'Your default gateway is:'
route | grep 'UG' | awk '{print $2}'
echo''
#Display hard disk size
echo 'Your hard disk size is:'
df -H /dev/sda1
echo ''
#Display top 5 directories and their size.
echo 'Your top 5 directories are:'
du -ah /home | sort -n -r | head -n 5 
echo''
#Display total CPU usage.
echo 'Total CPU usage:' 
top -d 10

