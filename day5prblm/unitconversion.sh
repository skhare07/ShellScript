#!/bin/bash
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"

echo " "


read -p "Select any one :" a

case $a in

1)
	read -p "Enter value : " x
	echo a="scale=2;" $x*12 | bc
	;;
2)
	read -p "Enter value :" x
	echo a="scale=2;" $x/3.28 | bc
	;;
3)
	read -p "Enter value : " x
	echo a="scale=2;" $x/12 | bc
	;;
4)
	read -p "Enter value : " x
	echo a="scale=2;" $x*3.28 | bc
	;;
esac


