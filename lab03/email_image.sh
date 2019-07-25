#!/bin/sh

for file in $*
do
    display $file
	echo -n "Address to e-mail this image to? "
	read email
	echo -n "Message to accompany image? "
	read message
	imageName=`echo $file | cut -d'.' -f1`
	echo $message|mutt -s $imageName! -e 'set copy=no' -a $file -- $email
	echo "$file sent to $email"
done
