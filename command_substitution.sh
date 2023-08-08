#!/bin/bash

#while login prints system information

echo "welcome $USER on $HOSTNAME."
echo

free_ram=$(free -h | grep Mem | awk '{print $4}')
load=`uptime | awk '{print $9}'`
disk_free=$(df -h | grep '/dev/xvda1' | awk '{print $4}')

echo "free ram is $free_ram"
echo
echo "current load average is $load"
echo
echo "available disk space  is $disk_free"
