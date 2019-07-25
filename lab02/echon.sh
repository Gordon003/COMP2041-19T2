#!/bin/bash

if [ $# != "2" ]
then
    echo "Usage: ./echon.sh <number of lines> <string>"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
   echo "./echon.sh: argument 1 must be a non-negative integer"
   exit 1
fi

a=0
while [ $a -lt $1 ]
do
   echo $2
   a=`expr $a + 1`
done
