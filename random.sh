#!/bin/bash

echo "1"
echo "a=$(( RANDOM%10));"

echo " ";
echo "2";
echo "Dice no : $(( RANDOM%7 ))";

echo " "
echo "3"
echo " "
echo "dice1=$(( RANDOM%7 ));"
echo "dice2=$(( RANDOM%7 ));"
echo sum=$(( $dice1+$dice2 ))


echo " "
echo "4"
echo " "
echo num1=$( shuf -i 10-99 -n1 )
echo num2=$( shuf -i 10-99 -n1 )
echo num3=$( shuf -i 10-99 -n1 )
echo num4=$( shuf -i 10-99 -n1 )
echo num5=$( shuf -i 10-99 -n1 )

echo sum=$(( $num1+$num2 ))


echo " ";

echo "5";
echo " ";
x=12;
read -p "Enter value in inches: " y
c=`echo "scale=2;"$y/$x | bc`
echo $c feet




