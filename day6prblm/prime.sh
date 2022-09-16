#!/bin/bash

read -p "Enter no : " n


 for (( i=2; i<=n/2; i++ ))
do
         p=$(( n%i ))
	if [ $p -eq 0 ]
then
	echo $n is not a prime number
exit 0


fi
done

echo $n is a prime number



