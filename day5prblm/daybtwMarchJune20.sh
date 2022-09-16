#!/bin/bash

read -p "Enter month in number ( 1 for January..) : " m
read -p "Enter Date : " d

if [[ $m -eq 6 && $d -le 20 ]]
then
	echo $m $d "true"
elif [[  ( $m -ge 3 && $d -ge 20 ) && ( $m -lt 6 && $d -lt 31 ) ]]
then
	echo $d $m "true"
else
	echo "false"
fi
