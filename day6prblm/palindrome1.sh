#!/bin/bash

read -p "enter 1st number :" n
read -p "enter 2nd number :" m
temp=$n
temp1=$m
rev=0;

function check()
{
while [ $n -gt 0 ]
do
a=`expr $n % 10`
n=`expr $n / 10`

rev=`expr $rev \* 10 + $a`
done
echo reverse : $rev




if [ $temp -eq $temp1 ]
then
	echo Both numbers are palindrome
else
	echo Both numbers are not palindrome
fi
}

check
