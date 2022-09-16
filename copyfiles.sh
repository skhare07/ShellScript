#!/bin/bash -x

#to copy all log files to their respective directory

for file in `ls *.log`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	if [ $folderName ]
	then
	rm -r $folderName;
	fi
	mkdir $folderName ;
	cp $file $folderName;
done

