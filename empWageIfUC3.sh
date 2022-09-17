#!/bin/bash 

isFullTime=1;
isPartTime=2;
randomCheck=$(( RANDOM%3 ));
empPerHour=20;


if [ $isFullTime -eq $randomCheck ]
then
	echo "Employee is present " ;
	empHrs=12;

elif [ $isPartTime -eq $randomCheck ]
then
	echo "Employee is PartTime present " ;
	empHrs=8;

else
	echo "Employee is absent " ;
	empHrs=0;

fi

salary=$(( $empPerHour * $empHrs ))
echo "Employee earned $salary rupees " ;
