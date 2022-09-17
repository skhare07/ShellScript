#!/bin/bash

isPresent=$(( RANDOM%3 ));
perHrsSalary=20;

case $isPresent in

0)
	echo "Employee is absent";
	workingHrs=0;
	;;

1)
	echo "Employee is Present";
	workingHrs=12;
	;;

2)
	echo "Employee is working part time ";
	workingHrs=8;
	;;
esac
	salary=$(( $perHrsSalary * $workingHrs ));
	echo "Employee earned $salary rupees ";

