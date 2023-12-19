#!/bin/bash

echo "Enter your username"
read USERNAME 
echo "Enter your password"
read -s PASSWORD # You should not print the password so we are using -S

echo -e "You are logged in as \e[32m$USERNAME" # \e[32m - Gave the green colour to USERNAME

