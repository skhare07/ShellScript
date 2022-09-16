#!/bin/bash

isHead=1;
counter=0
for (( i=1 ; i<=21 ; i++ ))

do

c=$(( RANDOM%2 ))

if [ $isHead -eq $c ]
then
	a=head
else
	a=tail
fi
echo $a

done






