#!/bin/bash

perHour=100
totalWorkingDay=5
#totalSalary=0;



function attendance() {

for (( i=1 ; i<=$totalWorkingDay ; i++ ))
do
	isPresent=$(( RANDOM%3 ))
case $isPresent in
0)
	echo " "
	echo day$i Present
	workingHours=8;
	;;
1)
	echo " "
	echo day$i Half Day
	workingHours=4;
	;;
2)
	echo " "
	echo day$i Absent
	workingHours=0;
	;;
esac
	#echo Day$i $isPresent

echo Worked $workingHours hours
totalWorkingHours=$(($totalWorkingHours + $workingHours ))
done
echo " "
echo Total Working Hours $totalWorkingHours hours
echo " "
}



function salary() {
for (( i=1 ; i<=$totalWorkingDay ; i++ ))
do
attendance

#echo Working Hour $workingHours
salary=$(( $totalWorkingHours*$perHour ))
#echo $salary

#totalSalary=$(( $totalSalary + $salary ))
done
echo Income : $salary $

}

echo 1.Attendance
echo 2.Salary
echo 0 for exit
echo " "
read -p "Enter your choice " c
case $c in

1)
	echo " "
	attendance
	;;

2)
	echo " "
	salary
	;;
0)
	echo Thank You
	exit 0
	;;
esac


