#!/bin/bash

echo " 1. degF to degC"
echo " 2. degC to degF"
read -p " Enter Choice " c


case $c in
1)
	read -p "Enter Temperature in degF (between 32-212) :" degF

	degC=$(( ($degF - 32) * 5/9 ))
	echo degC: $degC
	;;
2)
	read -p "Enter Temperature in degC (between 0-100) :" degC

	degF=$(( ($degC * 9/5) + 32 ))
	echo degF: $degF
	;;
esac

