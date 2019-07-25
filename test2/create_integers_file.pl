#!/usr/bin/perl

# Argument
$count = $ARGV[0];
$end = $ARGV[1];
$file = $ARGV[2];

# Open file for appending
open FILE, '>>'.$file;

# While loop
while ($count <= $end){
    # Print to file
    print FILE "$count \n";
    $count += 1;
}

# Close file
close FILE;
