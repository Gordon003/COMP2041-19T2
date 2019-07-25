#!/bin/bash

for fileName in `ls`
do
	num_lines=$((`wc -l $fileName | cut -d ' ' -f1`))
	if [ "$num_lines" -lt "10" ]
	then
		small+=' '$fileName
	elif [ "$num_lines" -lt "100" ]
	then
	    medium+=' '$fileName
	else
	    large+=' '$fileName
	fi
done

echo "Small files:"$small
echo "Medium-sized files:"$medium
echo "Large files:"$large
