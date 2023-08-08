#!/bin/bash

value=$(ip addr show | grep -v loopback | grep -ic mtu)

if [ $value -eq 1 ]
then
    echo "1 active interface found."
elif [ $value -gt 1 ]
then
    echo "found multiple active interface."
else
    echo "no active interface have found."
fi

