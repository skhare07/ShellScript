#!/bin/bash
s=1;
read -p " enter number of terms : " n

for (( i=1; i<=n ; i++ ))
do
	s=`echo $s + 1/$i`


done
echo Harmonic number upto $n th term : $s
