#!/usr/bin/perl

# Put each lines into an array
@lines = <STDIN>;

# Go thru each lines
foreach $line (@lines) {
    # Apply transformation
    $line =~ s/[0-4]/</g;
	$line =~ s/[6-9]/>/g;
	print $line;
}

