#!/usr/bin/perl

# Modified from frequency.pl
foreach $file (glob "lyrics/*.txt") {
	open F, "$file" or die;
	while ($line = <F>) {
        $line = lc $line;
        @words = grep(/./, split(/[^a-z]/, $line));
            
        # loop through each line and check for the word
       	foreach $i (@words) {
       	
		    # Add to artist hash
        	if ($artistFiles{$file}{$i}) {
		        $artistFiles{$file}{$i}++;
	        } else {
		        $artistFiles{$file}{$i} = 1;
		    }
		    
		    # Add to total words count
		    if ($totalWords{$file}) {
			    $totalWords{$file}++;
		    } else {
			    $totalWords{$file} = 1;
		    }
    	}
	}
}


# Modified frog log_probability.pl
sub logProb {
	my ($find) = @_;
	
	foreach $file (glob "lyrics/*.txt") {	
		$wordCount = $artistFiles{$file}{$find};
		$addWordCount = $wordCount + 1;
		$totalWord = $totalWords{$file};
		$freq = log($addWordCount/$totalWord);
		
		# get artist name
		@fn = split("/", $file);
		@ufn = split(".txt", $fn[1]);
		$artist = $ufn[0];
		$artist =~ s/_/ /g;

        # Probability
		$prob{$artist} = $freq;
	}
	return %prob;
}

# Get song words - return hash
# Mix of total_words.pl and count_word.pl
sub getSongWords {
	my ($file) = @_;
	
	# Hash table
	my %songWords;
	
	open F, $file or die;
	
	while ($line = <F>) {
        $line = lc $line;
        @words = grep(/./, split(/[^a-z]/, $line));
        # loop through each line and check for the word
        foreach $i (@words) {
            if ($songWords{$i}) {
	            $songWords{$i}++;
            } else {
	            $songWords{$i} = 1;
            }
     	}
	}
	
	return %songWords;
}

# Thru each song text
for $txt (@ARGV) {

    # Get list of words
	%songWords = getSongWords($txt);

    # Go thru each word
	foreach $word (keys %songWords) {
		%wordProb = logProb($word);
		# expand log prob and get artists
		foreach $artist (keys %wordProb) {
			$singer{$artist} += $wordProb{$artist} * $songWords{$word};
		}
	}

    # Compare
	$bestSinger = ( sort keys %singer )[0];
	$bestCount = $singer{$bestSinger};   
	foreach my $sign (sort keys %singer) {
		if ($bestCount < $singer{$sign}) {
			$bestCount = $singer{$sign};
			$bestSinger = $sign;
		}
	}
	
	# Print result
	printf("$txt most resembles the work of $bestSinger (log-probability=%4.1f)\n", $bestCount);
	
	undef %songWords;
	undef %singer;

}
