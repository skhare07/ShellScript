#!/bin/bash


echo " "
cat data.csv | awk '{if($5>=7000 && $5<=10000)print$3,$5}'

