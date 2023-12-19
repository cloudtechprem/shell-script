#!/bin/bash

# We are deleting the old logs which are older than 14 days

R="\e[31m" # Red Colour
G="\e[32m" # Green colour
Y="\e[33m" # Yellow colour
N="\e[0m" # No colour

SOURCE_DIR="/tmp/shellscript-logs" # This is the Source directory

if [ ! -d $SOURCE_DIR ] # ! - denotes opposite of 
then
    echo -e "$R ERROR:: The $SOURCE_DIR is not available"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log") # f : find, -mtime : days old, -name : files names

while IFS= read -r line
do
    echo "Deleting files: $line" # It will give the list of files line by line
    rm -rf $line # to remove the files in the line
done <<< $FILES_TO_DELETE # We are requesting output of Files to Delete to read in line by line