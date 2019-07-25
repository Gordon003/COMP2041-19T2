#!/bin/sh

input=$1
version=0

while [ -f "."$1.$version ]
do
    version=$(( version + 1 ))
done

newFile=".$1.$version"

while IFS= read -r line
do
    echo "$line" >> $newFile
done < "$input"

echo "Backup of '$1' saved as '$newFile'"
