#!/bin/bash

# -----------------------------
# Script reads every file
# in the actual directory 
# and prints their even lines
# -----------------------------
# Kevin Romero Peces-Barba
# CMPE - 150
# -----------------------------

# Get current directory
DIR=$PWD
# For every file/directory in current dir
for ENTRY in "$DIR"/*
do
	# Get doc name by reversing and cutting
	# the first element then reverse again
	DOC=$(echo $ENTRY | rev | cut -d'/' -f 1 | rev)
	# Init count
	COUNT=1
	# Check if is file
	if [[ -f $ENTRY ]]
	then
		# Read line by line
		cat $ENTRY | while read LINE
		do
			# If count is divisible by 2 (is even)
			if [[ $(expr $COUNT % 2) -eq 0 ]]
			then
				# Print
				echo $DOC": "$LINE
			fi
			# Update count
			COUNT=$(expr $COUNT + 1)
		done
	fi
done
# Exit
exit 0
