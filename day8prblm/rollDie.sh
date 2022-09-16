#!/bin/bash

try=35;

num1=0;
num2=0;
num3=0;
num4=0;
num5=0;
num6=0;

declare -A dictionary

for (( i=1; i<=$try; i++ ))
do

	n=$( shuf -i 1-6 -n1)
if [ $n -eq "1" ]
	then
	        dictionary[num1]=1;
	        (( num1++ ));
	elif [ $n -eq "2" ]
	then
	        dictionary[num2]=2;
	        (( num2++ ));
	elif [ $n -eq "3" ]
	then
	        dictionary[num3]=3;
	        (( num3++ ));
	elif [ $n -eq "4" ]
	then
	        dictionary[num4]=4;
	        (( num4++ ));
	elif [ $n -eq "5" ]
	then
	        dictionary[num5]=5;
	        (( num5++ ));
	else
	        dictionary[num6]=6;
	        (( num6++ ));
	fi

dictionary[$i]=$n

done

echo dictionary = "${dictionary[@]}"
echo " "

if [ $num1 -ge "10" ]
then
	echo "Count One reached : $num1 maximum time"
elif [ $num2 -ge "10" ]
then
	echo "Count Two reached : $num2 maximum time"
elif [ $num3 -ge "10" ]
then
        echo "Count Three reached : $num3 maximum time"
elif [ $num4 -ge "10" ]
then
        echo "Count Four reached : $num4 maximum time"
elif [ $num5 -ge "10" ]
then
        echo "Count Five reached : $num5 maximum time"
elif [ $num6 -ge "10" ]
then
        echo "Count Six reached :$num6 maximum time"
else
	echo "No Number reached more than 10"


	echo " "

	echo "Count of num1 is:$num1"
	echo "Count of num2 is:$num2"
	echo "Count of num3 is:$num3"
	echo "Count of num4 is:$num4"
	echo "Count of num5 is:$num5"
	echo "Count of num6 is:$num6"

fi

