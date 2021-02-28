#!/bin/bash -x

#constant
IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

#variable

totalworkingdays=0
totalEmpHrs=0


while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $NUM_WORKING_DAYS ]]
do
  ((totalworkingdays++))
  empcheck=$((RANDOM%3))
  case  $empcheck in
     $IS_FULLTIME)
        emphrs=8
   ;;
    $IS_PARTTIME)
  emphrs=4

   ;;
   *)
     emphrs=0
    ;;
  esac
totalEmpHrs=$(($totalEmpHrs+$emphrs))

done
totalsalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo $totalsalary

