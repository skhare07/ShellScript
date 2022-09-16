#!/bin/bash

read -p "Enter year 4 digit: " a
x=$(($a%4))
y=$(($a%100))
z=$(($a%400))

if [ $x -eq 0  ]
then
	echo $a is leap year
elif [ $y -ne 0 -o $z -eq 0 ]
then
	echo $a is leap year
else
	echo $a is not leap year
fi
