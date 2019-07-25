#!/usr/bin/perl

# open File
open F, $ARGV### or die;

# Open new File
$newFile = "$ARGV###.txt";
open NEWFILE, '>'.$newFile;

# Go thru each input line
while ( $line = <F> ) {
	$line =~ tr/##-##/#/;
	print NEWFILE "$line";
}

# Delete old
unlink("$ARGV###");

# Rename new to old
rename $newFile, $ARGV###;
