#!/bin/bash

counter=2

while true
do
  echo "looping"
  echo "value of counter is $counter."
  counter=$(( $counter * 2 ))
  sleep 1
done

echo "out of the loop"
