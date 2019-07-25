#!/usr/bin/perl

# Hash + Array
%wordSet = ();
@result = ();

# Count # of arguments
$numInput = @ARGV;

# Go thru each words in argument
while ($count != $numInput){

    # Get word
    $word = $ARGV[$count];
    
    # Check if exist
    if (not exists($wordSet{$word})){
        $wordSet{$word} = 1;
        push @result, $word;
    }
    
    $count += 1;
}

# Print
print "@result\n";
