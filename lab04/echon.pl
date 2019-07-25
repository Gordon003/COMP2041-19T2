#!/usr/bin/perl

# Check number of arguments
if (@ARGV != 2) {
	print "Usage: ./echon.pl <number of lines> <string>\n";
	exit;
} elsif ($ARGV[0] !~ /^\d+$/) {
    # If contains non-digit characters
	print "./echon.pl: argument 1 must be a non-negative integer\n";
	exit;
}

# Variable
$num = "$ARGV[0]";
$word = "$ARGV[1]";
$count = "0";

# Loop
while ($count < $num) {
	print "$word\n";
	$count++;
}
