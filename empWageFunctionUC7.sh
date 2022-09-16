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

	while [[ $day -le 20 && $totalWorkingHours -lt 40 ]]
do
	wHours=$( calculateWorkingHours $(( RANDOM%3 )) );
	totalWorkingHours=$(( $totalWorkingHours + $wHours ));

	if [ $totalWorkingHours -gt 40 ]
	then
	totalWorkingHours=$(( $totalWorkingHours - $wHours ));
	break;
	fi

	salary=$(( $wHours * $perHourSalary ));
	totalSalary=$(( $totalSalary  + $salary ));

	(( day++ ))
	done

	echo Employee has earned $totalSalary rupees in $totalWorkingHours hours;

