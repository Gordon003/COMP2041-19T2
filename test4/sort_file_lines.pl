#!/usr/bin/perl

# Open file
open (FILE, $ARGV[0]) || die "Can't open file \"$ARGV[0]\".\n";

# File -> array
@list = `cat $ARGV[0] | sort -n`;

$count = 0;

# Get each line length
foreach $word (@list) {
    $wordLength[$count] = length($word);
    $count += 1;
}

@sortedWordLength = sort{$a <=> $b}(@wordLength);

# Go from shortest to longest
foreach $wordLength (@sortedWordLength) {
    
    $count2 = 0;
    
    foreach $word (@list) {
        if ( length($word) == $wordLength ){
            splice @list, $count2, 1;
            print $word;
            last;
        }
        $count2 += 1;
    }
    
}
