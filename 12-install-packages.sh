#!/bin/bash

# If we want to install some packages at the same time
# GIT, MySQL, Postfix, net-tool

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log" # Give the meaning ful log name with help of timestamp and script name


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R...FAILED $N" # $R - For Red Colour
    else
        echo -e "$2 $G...SUCCESS $N" # $G - For Green Colour
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: you are not a root user"
    exit 1
else
    echo -e "You are a root user"
fi

# using forloops we can install ultiple packages at a same time

for package in $@
do
    dnf list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then 
        dnf install $package -y &>> $LOGFILE
        VALIDATE $? "Installation of $package"
    else
        echo -e "$package is already installed.....$Y SKIPPING $N"
    fi
done


