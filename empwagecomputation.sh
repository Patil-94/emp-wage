#!/bin/bash -x

empcheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
EMP_RATE_PER_HRS=20

case  $empcheck in
     $isFullTime)
      Emphrs=8
  ;;
      $isPartTime)
       Emphrs=4

  ;;
  *)
       Emphrs=0

  ;;
esac
  salary=$(($Emphrs*$EMP_RATE_PER_HRS))
  echo salary


