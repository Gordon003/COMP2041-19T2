#!/usr/bin/perl

# Get word length
$numLine = `cat $ARGV[0] | wc -l`;

# Determine which range to print
$lowRange = 0;
$highRange = 0;

# If even
if ( $numLine % 2 ){
    $lowRange = ($numLine + 1) / 2;
    $highRange = $lowRange;
} else {
    $lowRange = $numLine / 2;
    $highRange = $lowRange + 1;
}

# Open file
open (FILE, $ARGV[0]) || die "Can't open file \"$ARGV[0]\".\n";

# Go thru each line
$count=0;
while ($line = <FILE>) {
    $count++;
    if ($count >= $lowRange  &&  $count <= $highRange) {
        print "$line";
    }
}

# Close file
close(FILE)
