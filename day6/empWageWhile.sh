#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEMpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	case $empCheck in
		$IS_FULL_TIME)
			empHr=8
			;;
		$IS_PART_TIME)
			empHr=4
			;;
		*)
			empHr=0
			;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHr))
done
totalSalary=$(($totalEmpHr*$EMP_RATE_PER_HR));
