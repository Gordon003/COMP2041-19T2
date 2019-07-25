#!/bin/dash

version=0

while [ -d ".snapshot".$version ]
do
    version=$(( version + 1 ))
done

newFile=".snapshot.$version"

mkdir ./$newFile

for file in *
do
    result=${file%"${file#?}"}
    if [ $file = "snapshot-save.sh" ] || [ $file = "snapshot-load.sh" ] || [ $result = "." ]
    then
        continue
    fi
    cp "$file" "$newFile/$file"
done

echo "Creating snapshot $version"

