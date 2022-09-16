#!/bin/bash

read -p "enter a number :" n
temp=$n
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




if [ $temp -eq $rev ]
then
	echo $temp is palindrome
else
	echo $temp is not palindrome
fi
}

check
