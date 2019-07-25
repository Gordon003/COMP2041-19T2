#!/usr/bin/perl

# Count # of arguments
$numInput = @ARGV;
$count = 0;

# Go thru each words in argument
while ($count != $numInput){

    # Lower-case word
    $word = lc($ARGV[$count]);

    # If has 3 consecutive vowels, print it
    if ( $word =~ /[aeiou]{3}/i ) {
        print "$ARGV[$count] ";
    }
    
    $count += 1;
}

# End line
print "\n";
