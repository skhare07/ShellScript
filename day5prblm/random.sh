#!/bin/bash
sum=0;
for ((i=1 ; i<=5 ; i++))
do
dice=$( shuf -i 100-999 -n1 )
sum=$(($sum+$dice))
echo num=$dice
done

echo sum=$sum
average=`echo "scale=2;" $sum/5 | bc`
echo average: $average

