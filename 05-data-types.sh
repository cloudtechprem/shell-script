#!/bin/bash

NUMBER1=$1 # we can give the arguments while running the script
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo -e "Total:: \e[32m$SUM" #