#!/bin/sh

# Argument
start=$1;
end=$2;
file=$3;

# While Loop
while (( $start <= $end ))
do
    # Print to file
    echo "$start" >> $file
    start=$(( start + 1 ))
done
