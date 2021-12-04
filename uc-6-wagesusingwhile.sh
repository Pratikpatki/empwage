#!/bin/bash -x

isPartTime=1
isFillTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && $totalworkingDays -lt $numOfWorkingDays ]]
do
		((totalworkingDays++))
		empCheck=$((RANDOM%3))
		case $empCheck in
				$isFillTime)
					empHrs=8
				;;
				$isPartTime)
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac

	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
