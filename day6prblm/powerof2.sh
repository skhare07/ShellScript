#!/bin/bash

read -p "enter a number: " n

for (( i=1 ; i<=n ; i++ ))
do
	echo 2^$i | bc


done

