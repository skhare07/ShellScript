#!/bin/bash
# Asking user to input size of array
# To get value stored in array and allow change in index's value

read -p "Enter size of array : " s

for (( i=0 ; i<$s ; i++ ))
do
	read -p "enter element $(($i+1)) at index $i : " a
	Array[(( $i ))]="$a"
done
echo array : ${Array[@]}


echo " "

read -p "Do you want to change any value ?(y/n) :" choice

function change()
{
	case $choice in
y)
	echo " "
   read -p "Which index's position value you want to change(starting with 0) :" p
   read -p "New value : " v

	Array[p]=$v

	echo new array ${Array[@]}
;;

n)

;;

esac

read -p "Do you want more change(y/n) : " choice1

case $choice1 in
y)
	echo " "
	change
;;

n)
	echo Final array ${Array[@]}
;;

esac

}

change




