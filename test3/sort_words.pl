#!/usr/bin/perl

# Go thru each input line
while ( $line = <STDIN> ) {
	# Remove any newline space
	chomp $line;
	# Split words into array
	@words = split /\s+/, $line;
	# Sort array
	@words = sort @words;
	# Print array
	foreach my $word (@words) {
		print $word, " ";
	}
	print "\n";
}
