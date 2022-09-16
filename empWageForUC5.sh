#!/bin/bash

isPartTime=1;
IsFullTime=2;
totalSalary=0;
empPerHrs=20;
totalWorkingDay=20;
empHrs=0;

for (( day=1 ;day<=$totalWorkingDay ; day++ ))
do
	empCheck=$(( RANDOM%3 ));
case $empCheck in
0)
	echo Employee is absent Day $day
	empHrs=8;	
;;

1)
	echo Employee is working parttime Day $day;
	empHrs=4;
	;;

2)
	echo Employee is working Full Time Day $day ;
	empHrs=8;
	;;
esac

salary=$(( $empHrs * $empPerHrs ));
totalsalary=$(( $totalsalary + $salary ));
done
echo Total salary is $totalsalary;
