#!/bin/bash
# We will use "IF" condition here

NUMBER=$1

if [ $NUMBER -gt 100 ]
then 
    echo "Given number is greater than 100"
else
    echo "Given number is not greater than 100"
fi