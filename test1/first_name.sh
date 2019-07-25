#!/bin/sh

cat $1  | egrep 'COMP[29]041' | cut -d' ' -f2 | sort | uniq -c | sort -nr | head -1 | cut -c 9-
