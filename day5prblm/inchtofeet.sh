#!/bin/bash

x=12;
read -p "Enter value in inches: " y
c=`echo "scale=2;"$y/$x | bc`
echo $c feet
