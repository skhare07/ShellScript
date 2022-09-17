#!/bin/bash


Workinghrs=0;
totalWorkingHrs=0;
totalSalary=0;
perHrSalary=20;
day=1;

while [[ $day -le 20 && $totalWorkingHrs -lt 100 ]]
do

	isPresent=$(( RANDOM%3 ))

	case $isPresent in
0)
	#echo Employee is Absent Day $day;
	workingHrs=0;
	;;
1)
	#echo Employee is Present Day $day;
	workingHrs=12;
	;;
2)
	#echo Employee is Absent Day $day;
	workingHrs=8;
	;;
esac
	totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ));


	if [ $totalWorkingHrs -gt 100 ]
then
	totalWorkingHrs=$(( $totalWorkingHrs - $workingHrs ));
break;

fi

salary=$(( $perHrSalary * $workingHrs ));

totalSalary=$(( $totalSalary + $salary ));

((day ++))
done

echo "$totalSalary rupees in $totalWorkingHrs hrs in a month";
