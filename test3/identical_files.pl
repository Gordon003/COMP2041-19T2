#!/usr/bin/perl

use File::Compare;

$count = 0;
$prevFile = $ARGV[0];

# Check # of argument
if ( $#ARGV < 1 ){
    print "Usage: ./identical_files.pl <files> \n";
    exit 1;
}

# Go thru each file
while ( $count <= $#ARGV ) {

    # If not the first file
    if ( $count != 0 ) {
    
        # Compare 2 files
        if (compare("$prevFile", "$ARGV[$count]") != 0) {
          print "$ARGV[$count] is not identical\n";
          exit 1;
        }
        
    }
    $count++;
}

# If all files are identical...
print "All files are identical\n";
