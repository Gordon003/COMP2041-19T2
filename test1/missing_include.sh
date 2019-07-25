#!/bin/sh

for line in $@
do
	filesIncluded=`cat $line | grep '#include' | grep '"' | cut -d' ' -f2 | sed -e 's/"//g'`
	for file in $filesIncluded
	do
		if [ ! -e $file ]
		then
			echo "$file included into $line does not exist"
		fi
	done
done
