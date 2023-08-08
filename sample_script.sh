#!/bin/bash

### this prints the systems info ###

echo 'welcome to bash scripting.'
echo
echo '#############'
echo 'the uptime of the system is:'
uptime
echo

echo '#############'
echo 'memory utilization'
free -h
echo

echo '#############'
echo 'disk space utilization'
df -h

