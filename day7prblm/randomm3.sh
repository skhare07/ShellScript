#!/bin/bash

for (( i=1 ; i<=10 ; i++ ))
do
	num=$( shuf -i 100-999 -n1 )
	echo num$i=$num


	array[(( $i ))]="$num"


done
echo array:  ${array[@]}

printf '%s\n' "${array[@]}" | sort -n
echo " "
echo 2nd highest
printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1
echo " "
echo 2nd lowest
printf '%s\n' "${array[@]}" | sort -nr | tail -2 | head -1
