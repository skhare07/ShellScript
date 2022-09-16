#!/bin/bash

l=60;
b=40;

x=`echo "scale=2;" $l/3.28 | bc`
y=`echo "scale=2;" $b/3.28 | bc`
area=`echo "scale=2;" $x*$y | bc`
echo area of 1 plot in meter :$area

area1=`echo "scale=2;" $area/4047 | bc`
echo area of 1 plot in acres : $area1
area2=`echo "scale=2;" $area1*25 | bc`
echo area of 25 plots in acres : $area2

