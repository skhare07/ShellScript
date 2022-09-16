#!/bin/bash
cat data.csv
echo " ";
echo "1";
echo " ";

cat data.csv | awk '{if($4>10000)print$2,$7}'
echo " ";
echo "2";
echo " ";

cat data.csv | grep CAPTAIN
echo " ";
cat data.csv | awk '{sum+=$7} END {print "Total="sum}'

echo " ";
echo "3";
echo " ";

cat data.csv | awk '{if($5>=7000 && $5<=10000)print$3,$5}'

echo " ";
echo "4";
echo " ";

cat data.csv | awk  '{sum+=$4} END {print "Average="sum/(NR-1)}'
