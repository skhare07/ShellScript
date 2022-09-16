#!/bin/bash

read -p " enter first number " a
read -p " enter secomd number " b
read -p " enter third number " c

echo first=$(( $a+($b*$c) ))
echo second=$(( $c+($a/$b) ))
echo third=$(( ($a%$b)+$c ))
echo forth=$(( ($a*$b)+$c ))
