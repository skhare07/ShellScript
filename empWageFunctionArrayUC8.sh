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
day=1;

function getEmpWage()
{
local empHr=$1;
echo $(( $empHr*$perHourSalary ));


}


	while [[ $day -le 20 && $totalWorkingHours -lt 40 ]]
do
	empHrs=$( calculateWorkingHours $(( RANDOM%3 )) );
	totalWorkingHours=$(( $totalWorkingHours + $empHrs ));

	if [ $totalWorkingHours -gt 40 ]
	then
	totalWorkingHours=$(( $totalWorkingHours - $empHrs ));
	break;
	fi

	salary=$(( $empHrs * $perHourSalary ));
	totalSalary=$(( $totalSalary  + $salary ));

	(( day++ ))

dailyWage[$day]=$( getEmpWage $empHrs )

done

	echo Employee has earned $totalSalary rupees in $totalWorkingHours hours;

echo ${dailyWage[@]};
