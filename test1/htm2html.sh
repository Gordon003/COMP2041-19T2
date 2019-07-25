#!/bin/sh

IFS='
'
htmFiles=`ls -d *.htm`
for file in $htmFiles;
do
	fName=`echo $file | sed 's/.htm$//'`
	if [ ! -e "$fName.html" ]; then
		mv "$file" "$fName.html"
	else
		echo "$fName.html exists"
		exit 1
	fi
done
