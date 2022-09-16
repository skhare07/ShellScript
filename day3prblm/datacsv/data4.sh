#!/bin/bash



cat data.csv | awk  '{sum+=$4} END {print "Average="sum/(NR-1)}'

