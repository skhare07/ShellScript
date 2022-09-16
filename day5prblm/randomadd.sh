#!/bin/bash
sum=0;
for (( i=1 ; i<=5 ; i++ ))
do
num=$( shuf -i 10-99 -n1 )
sum=$(( $sum + $num ))
echo $num
done
echo sum=$sum
echo average=$(( $sum/($i-1) ))
