#!/bin/bash

read -p "enter a number: " n
i=1;
while [ $i -le 8 ]

do
	echo 2^$i | bc
(( i++ ))

done

