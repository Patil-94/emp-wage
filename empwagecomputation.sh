#!/bin/bash -x

#CONSTANT
EMP_RATE_PER_HR=20
FULL_TIME_HRS=8

#variable
empCheck=$((RANDOM%2))
ispresent=1


if [ $empCheck -eq $ispresent ]
then
     salary=$(($EMP_RATE_PER_HR*$FULL_TIME_HRS))
    echo $salary
else
   salary=0
    echo '$salary'
fi
