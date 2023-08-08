#!/bin/bash

usersad="release testers dev"

for user in $usersad
do 
  echo "adding users $user"
  useradd $user
  id $user
  echo
done
