#!/bin/bash -x

#constant
IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

#variable
tatalsalary=0

for ((day=1; day<=$NUM_WORKING_DAYS; day++))
do
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
         salary=$(($emphrs*$EMP_RATE_PER_HR))
         totalsalary=$(($totalsalary+$salary))
         echo $totalsalary
 done



