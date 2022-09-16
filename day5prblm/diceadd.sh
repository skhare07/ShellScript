#!/bin/bash

dice1=$( shuf -i 1-6 -n1 )
dice2=$( shuf -i 1-6 -n1 )
echo sum=$(( $dice1+$dice2 ))
