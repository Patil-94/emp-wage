#!/bin/bash -x
#CONSTANT
FULL_TIME_HRS=8
PART_TIME_HRS=4
EMP_RATE_PER_HR=20
#variable
empCheck=$((RANDOM%3))
isFullTime=1
isPartTime=2

if [ $empCheck -eq $isFullTime ]
then
     salary=$(($EMP_RATE_PER_HR*$FULL_TIME_HRS))
     echo $salary

elif [ $empCheck -eq $isPartTime ]
then
         salary=$(($EMP_RATE_PER_HR*$PART_TIME_HRS))
        echo $salary

else
        salary=0
        echo $salary
fi

 
