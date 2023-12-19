#!/bin/bash

# We are trying to a get the disk usage if the threshold exceeds 1%

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') # we dont want tmp and File in the output so we are using vE 'tmp|File : | - denotes "AND" here'
DISK_THRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1) # using awk command to get the 6th fragment in grep -vE 'tmp|File' and cut command to remove the percentage
    partition=$(echo $line awk '{print $1F}')
    if [ $usage -gt $DISK_THRESHOLD ]
    then 
        message+="High Disk Usage on $partition: $usage\n"
    fi
done <<< $DISK_USAGE

echo -e "message: $message"