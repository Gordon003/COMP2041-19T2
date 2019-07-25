#!/usr/bin/perl

# Hash
%wordSet = ();

# Snap count
$snapCount = $ARGV[0];

# Go thru input
while( $currLine = <STDIN> ){

    # Check if that line exist in hash
    if( exists $wordSet{$currLine} ){
        $wordSet{$currLine}++;
    }
    else{
        $wordSet{$currLine} = 1;
    }
    
    # If we reach snap count, terminate early
    if( $wordSet{$currLine} == $snapCount ){
        print "Snap: $currLine";
        exit 0;
    }
    
}
