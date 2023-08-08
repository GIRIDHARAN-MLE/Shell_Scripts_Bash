#!/bin/bash

echo
date
echo

ls /var/run/apache2/apache2.pid &> /dev/null

if [ $? -eq 0 ]
then
    echo "apache2 process is running."
else
    echo "apache2 process is NOT running."
    echo
    echo "starting the process"
    systemctl start apache2
    if [ $? -eq 0 ]
    then
        echo
        echo "process started successfully."
    else
        echo "process starting failed, please contact the admin."
    fi
fi
echo
