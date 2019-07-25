#!/usr/bin/perl

# Argument
$lineNum = $ARGV[0];
$file = $ARGV[1];
$count = 1;

# Open file
open F, $file or die;

# While loop
while ($line = <F>) {
    # If reach that num, print and exit
	if ($count == $lineNum) {
		print $line;
		close(F);
		exit(0);
	}
	$count += 1;
}

close(F);
exit(1);
