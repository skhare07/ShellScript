#!/bin/bash
cat data.csv | awk '{if($4>10000)print$0}'

echo " "
cat data.csv | awk '{if($4>10000)print$2,$7}'
