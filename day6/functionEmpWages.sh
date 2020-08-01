#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalWorkHrs=0;
totalWorkingDays=0;

function getWorkingHrs() {
	case $1 in
		$IS_FULL_TIME)
			empHrs=8
			;;
		$IS_PART_TIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
}

while [[ $totalWorkhrs -lt $MAX_HRS_IN_MONTH && $totalWorkingdays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	getWorkingHrs $((RANDOM%3))
	totalWorkingHours=$(($totalWorkingHrs + $empHrs));
done

totalSalary=$(($totalWorkHrs*$EMP_RATE_PER_HR));
