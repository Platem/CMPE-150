#!/bin/bash

dir=$PWD;
count= 1;

for entry in "$dir"/*;
do
	#check if is file or folder?
	echo $entry;
	cat $entry | while read line
	do
		#echo $line;
		if [[ $($count % 2) -eq 0 ]];
		then
			echo $count;
		fi
		$count= $($count + 1);
	done
done

