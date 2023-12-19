#!/bin/bash

FRUITS=("Apple" "Mango" "Banana")
R=\e[31m
G=\e[32m
Y=\e[33m

echo "First fruit is ${FRUITS[0]}"
echo "Second fruit is ${FRUITS[1]}"
echo "Third fruit is ${FRUITS[2]}"

## Result will be like below
# First fruit is Apple
# Second fruit is Mango
# Third fruit is Banana

echo "All fruits are :: ${FRUITS[@]}"