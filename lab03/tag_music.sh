#!/bin/sh

for mFolder in "$@"
do
	for file in "$mFolder"/*
	do
	    # Music file structure
		mFile=`echo "$file" | sed 's/\/\//\//g'`
		
		title=`echo "$mFile" | awk -F" - " '{print $2}'`
		id3 -t "$title" "$mFile" > /dev/null 2>&1
		
		album=`echo "$mFile" | cut -d'/' -f2`
		id3 -A "$album" "$mFile" > /dev/null 2>&1
		
		artist=`echo "$mFile" | awk -F" - " '{print $3}'`
		artist="${artist%.mp3}"
		id3 -a "$artist" "$mFile" > /dev/null 2>&1
		
		year=`echo "$album" | cut -d',' -f2 | column -t`
		id3 -y "$year" "$mFile" > /dev/null 2>&1
		
		track=`echo "$mFile"  | awk -F" - " '{print $1}' | cut -d',' -f2 | cut -d'/' -f2`
		id3 -T "$track" "$mFile" > /dev/null 2>&1

	done

done
