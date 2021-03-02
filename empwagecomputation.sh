#!/bin/bash -x

#constant
IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

#variable
tatalsalary=0
totalworkingdays=0
tatalEmpHrs=0

declare -A dailywage

function getworkingHrs(){
 case  $1 in
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
       echo $emphrs
}

function getEmpWage()
{
	local empHr=$1
 	echo $(($empHr+$EMP_RATE_PER_HR))

}



     while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH  &&  $totalworkingdays -lt $NUM_WORKING_DAYS ]]
     do
            ((totalworkingdays++))
            empcheck=$((RANDOM%3))
            emphrs=$( getworkingHrs $empcheck )
            totalEmpHrs=$(($totalEmpHrs+$emphrs))
            dailywage[ $totalworkingdays ]=$( getEmpWage $emphrs )

    done

           totalsalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
             echo  total salary $totalsalary
             echo Daily wages ${dailywage[@]}
           echo all keys ${ !dailywage[@]}

