#!/usr/bin/perl

# Counter
$totalWords = 0;

# Go thru each line
while ( ($currLine = <STDIN>) ) {
        # String -> Arrayof lines (Split when not a char)
	    @words = grep(/./, split(/[^a-zA-Z]/, $currLine));
	    # Count
	    $totalWords += 0+@words;
};

# Print total amount
print $totalWords, " words\n";
