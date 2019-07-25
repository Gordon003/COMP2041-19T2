#!/bin/sh

for imageFile in $*
do
	fTime=`ls -l "$imageFile" | cut -d' ' -f6-8`
	fType=`echo "$imageFile" | cut -d'.' -f2`
	convert -gravity south -pointsize 36 -draw "text 0,10 '$fTime'" "$imageFile" temporary_file.$fType
	mv temporary_file.$fType "$imageFile"
done
