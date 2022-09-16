#!/bin/bash


cat data.csv | grep CAPTAIN
echo " ";
cat data.csv | grep CAPTAIN | awk '{sum+=$7} END {print "Total="sum}'

