#!/bin/bash

function calculateWorkingHours() {

	case $1 in 
0)
	workingHours=0;
	;;

1)
	workingHours=1;
	;;
2)
	workingHours=2;
	;;

esac
	echo $workingHours;

}

perHourSalary=20;
totalSalary=0;
totalWorkingHours=0;
day=0;

function getEmpWage()
{
local empHr=$1
echo $(( $empHr*$perHourSalary ))

declare -A dailyWage

}


	while [[ $day -lt 20 && $totalWorkingHours -lt 100 ]]
do
	empHrs=$( calculateWorkingHours $(( RANDOM%3 )) );
	totalWorkingHours=$(( $totalWorkingHours + $empHrs ));

	if [ $totalWorkingHours -gt 100 ]
	then
	totalWorkingHours=$(( $totalWorkingHours - $empHrs ));
	break;
	fi

	salary=$(( $empHrs * $perHourSalary ));
	totalSalary=$(( $totalSalary  + $salary ));

	(( day++ ))

dailyWage[$day]=$( getEmpWage $empHrs );

done

echo Employee has earned $totalSalary rupees in $totalWorkingHours hours;
echo " "
echo Daily wage : ${dailyWage[@]};
echo " ";
echo Total days : ${#dailyWage[@]};

