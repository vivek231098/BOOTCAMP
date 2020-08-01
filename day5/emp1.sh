#!/bin/bash -x
isFullTime=1
empRatePerHour=20
FullTimeWorkingHrs=8
isPartTime=2
PartTimeWorkingHrs=4
randomCheck=$(( RANDOM%3 ))
if [ $isFullTime -eq $randomCheck ]
then
	echo "Employee is fulltime"
	salary=$(( $FullTimeWorkingHrs*$empRatePerHour ))
elif [ $isPartTime -eq $randomCheck ]
then	
	echo "Employee is parttime"
	salary=$(( $PartTimeWorkingHrs*$empRatePerHour ))
else 
	echo "Employee is absent"
	salary=0
fi
