#!/bin/bash

read -p "enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "only 100 and 500 are printable"
    sleep 3
    echo "yes entered value is equal or greater than 100"
    echo
    date
else
    echo "you have entered value less than 100"
fi 

echo "thank u for the transaction with us"

