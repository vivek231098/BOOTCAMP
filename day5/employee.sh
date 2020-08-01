#!/bin/bash -x
isFullTime=1
isPartTime=2
empRatePerHour=20
empWorkingHrs=8
randomCheck=$(( RANDOM%2 ))
if [ $isFullTime -eq $randomCheck ]
then
	echo "FullTime Employee is present"
	salary=$(( $empWorkingHrs*$empRatePerHour ))
else
	echo "Employee is absent"
	salary=0
fi
 
if [ $isPartTime -eq $randomCheck ]
then
	echo "PartTime employee is present"
	salary=$(( $empWorkingHrs*$empRatePerHour ))
else
	echo "Employee is absent"
	salary=0
fi
