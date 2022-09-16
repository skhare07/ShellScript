#!/bin/bash

read -p "Enter a number " n

fact=1;

while [ $n -gt 1 ]
do

fact=$(( n * fact ))
	n=$(( n - 1 ))

	if [ $n -gt 1 ]
	then
	 echo  $n "*"
	else
	echo 1
	fi
done

echo total :$fact
