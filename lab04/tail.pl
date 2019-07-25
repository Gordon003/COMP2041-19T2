#!/usr/bin/perl

# User input how many lines to 
$numInput = 0;

# Argument
foreach $arg (@ARGV) {
	if ($arg eq "--version") {
    	print "$0: version 0.1\n";
    	exit 0;
	}
    # Num
	elsif ($arg =~ /^-\d+$/) {
		$numInput = abs($arg);
	}
	else {
		push @files, $arg;
	}
}

# Doesn't contain <
if (@ARGV >= 1) {
    # Loop thru each files
    foreach $f (@files) {
	    open F, '<', $f or die "$0: Can't open $f: $!\n";
	
	    # Length
	    $lineNum = `wc -l $f | cut -d' ' -f1`;	

        # If only 1 file
	    if (@files == 1) {
	        if ($numInput > 0) {
	            $i = $lineNum;
	        } elsif ($numInput == 0) {
	            $numInput = 10;
		        $i = $lineNum;
	        }
	    # If more than 1 file
	    } else {
		    print "==> $f <==\n";
		    $i = $lineNum;
	    }
	    
	    # Print line
	    while ($line = <F>) {
            if ($i <= $numInput) {
                print "$line"
            }
            $i -= 1;
        }
        
        # Close file
	    close F;
    }
# Contains < (0)
} else {
	$lineNum = 0;
	
	# Get each line input
	while (($s = <STDIN>) =~ /\S/) {
        	push @lines, $s;
		$lineNum += 1;
	}

    $numInput = 10;
    $i = $lineNum;
    
    # Loop thru each line
	foreach $line (@lines) {
		if ($i <= $numInput) {
		    print "$line"
		}
		$i -= 1;
	}
}
