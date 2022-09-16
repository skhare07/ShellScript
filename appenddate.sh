#!/bin/bash

for file in * .log
do
folderName=`echo $file_name | awk -F. '{print $1}'`;

currentdate=$(date "+%Y%m%d")
#echo "Current date : $currentdate"
new_file=$folderName-$currentdate.log
echo "New FileName:" $new_file
cp $file_name $new_file

done
