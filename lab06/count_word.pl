#!/usr/bin/perl

$find = lc $ARGV[0];

# Counter
$countWord = 0;

# Go thru each line
while ($currLine = <STDIN>) {

    # Lower case all characters
	$currLine = lc $currLine;
	
	# String -> Arrayof lines (Split when not a char)
	@words = grep(/./, split(/[^a-z]/, $currLine));
	
	# loop through each line and check for the word
	foreach $i (@words) {
		if ($i =~ /^$find$/i) {
			$countWord++
		}
	}
}

print "$ARGV[0] occurred $countWord times\n";
