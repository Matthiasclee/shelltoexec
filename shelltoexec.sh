#!/bin/zsh
#ShellToExec © Matthias Lee 2020
clear
if [[ $# == 0 ]]; then

	echo File: 
	read first

	if [[ $first == "" ]]; then
		echo ERROR: No file specified
	
	else
	if [[ $first == *".sh"* ]]; then
	if [ -f "$first" ]; then
		#statements
	
	second=${first//.sh/}
	cp "$first" "$second"
	chmod +x "$second"
	if [ -f "$second" ]; then
		echo Success!
	else
		echo ERROR: Unknown error
	fi
else
	echo ERROR: File does not exist
	fi
else
	echo ERROR: Invalid file type
	fi

fi
elif [[ $1 == *".sh"* ]]; then
	first=$1
	if [ -f $first ]; then
		#statements
	
	second=${first//.sh/}
	cp "$1" "$second"
	chmod +x "$second"
	if [ -f $second ]; then
		echo Success!
	else
		echo ERROR: Unknown error
	fi
else
	echo ERROR: File does not exist
	fi
else
	echo ERROR: Invalid file type
fi