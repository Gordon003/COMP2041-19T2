#!/bin/sh

for imageFile in *;
do
	fType=`echo $imageFile | cut -d'.' -f2`
	fName=`echo $imageFile | cut -d'.' -f1`
	if [ "$fType" == "png" ]
	then
	    echo "$fName.png already exists"
	elif [ "$fType" == "jpg" ]
	then
	    convert "$imageFile" "$fName.png"
		rm "$imageFile"
	fi
done
