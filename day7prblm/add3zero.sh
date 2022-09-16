#!/bin/bash

arr=(1 2 -3)
n=3;
 for (( i=0 ;i<n-2 ; i++ )) do
	for (( j=1+$i ; j<n-1 ; j++ ))
	do
		for (( k=$j+1 ; k<n ; k++ ))
		do
			if [[ $((${arr[$i]} + ${arr[$j]} + ${arr[$k]})) -eq 0 ]]
			then
			echo ${arr[$i]} + ${arr[$j]} + ${arr[$k]}
			

else
				echo not exits

	fi


done
done
done




