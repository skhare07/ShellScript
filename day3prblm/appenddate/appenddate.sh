#!/bin/bash

for file in *log.1
do

folderName=`echo $file | awk -F. '{print $1}'`;

currentdate=$(date "+%d%m%Y");

new_file=$folderName-$currentdate.log;

mv $file $new_file

done
