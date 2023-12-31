#!/bin/bash

# We are using while loop to display the required fields in a line

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

file=/etc/passwd # This is the Source directory

if [ ! -f $file ] # ! - denotes opposite 
then
    echo -e "$R ERROR:: The $file is not available"
    exit 1
fi

while IFS=":" read -r username password user_id user_fullname home_dir shell_path
do
    echo "username: $username"
    echo "user ID: $user_id"
    echo "user Full name: $user_fullname"
done <$file