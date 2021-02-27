#!/bin/bash -x

empCheck=$((RANDOM%2))
ispresent=1

if [ $empCheck -eq $ispresent ]
then
    echo 'Emp is present'
else
    echo 'Emp is absent'
fi
