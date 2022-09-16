#!/bin/bash

a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
k=0
l=0

declare -A dictionary1

for (( z=1 ; z<=50 ; z++ ))

do

 m=$( shuf -i 1-12 -n1 )



	if [ $m -eq 1 ]
	then

	dictionary1[jan]=1
		(( a++ ))
	elif [ $m -eq 2 ]
	then
	dictionary1[feb]=2
		(( b++ ))

	elif [ $m -eq 3 ]
	then
	dictionary1[mar]=3
		(( c++ ))

	elif [ $m -eq 4 ]
	then
	dictionary1[april]=4
		(( d++ ))

	elif [ $m -eq 5 ]
	then
	dictionary1[may]=5
		(( e++ ))

	elif [ $m -eq 6 ]
	then
	dictionary1[june]=6
		(( f++ ))

	elif [ $m -eq 7 ]
	then
	dictionary1[july]=7
		(( g++ ))

	elif [ $m -eq 8 ]
	then
	dictionary1[aug]=8
		(( h++ ))

	elif [ $m -eq 9 ]
	then
	dictionary1[sep]=9
		(( i++ ))

	elif [ $m -eq 10 ]
	then
	dictionary1[oct]=10
		(( j++ ))

	elif [ $m -eq 11 ]
	then
	dictionary1[nov]=11
		(( k++ ))

	else
	dictionary1[dec]=12
		(( l++ ))

	fi




done

echo " "
echo $a born in Jan
echo $b born in Feb
echo $c born in March
echo $d born in April
echo $e born in May
echo $f born in June
echo $g born in July
echo $h born in Aug
echo $i born in Sep
echo $j born in Oct
echo $k born in Nov
echo $l born in Dec
