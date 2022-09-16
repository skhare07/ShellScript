#!/bin/bash

#To copy all log files to their respective directory and appent current date to file.

for file in `ls *.log`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	if [ $folderName ]
	then
	rm -r $folderName;
	fi
	mkdir $folderName ;




currentdate=$(date "+%Y%m%d")

new_file=$folderName-$currentdate.log
echo "New FileName:" $new_file
cp $file $new_file
cp $new_file $folderName

done

