#!/bin/bash

for i in {0..100..11}
do
	echo $i
	array[(($i))]=$i
done

echo array : ${array[@]:1}
