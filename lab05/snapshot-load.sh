#!/bin/dash

snapshot-save.sh

# Load
echo "Restoring snapshot $1"

currentFile="./.snapshot.$1"

for file in *
do
    result=${file%"${file#?}"}
    if [ $file = "snapshot-save.sh" ] || [ $file = "snapshot-load.sh" ] || [ $result = "." ]
    then
        continue
    fi
    
    if [ ! -f "$currentFile/$file" ]
    then
        continue
    fi
    
    cp "$currentFile/$file" "$file"
done

