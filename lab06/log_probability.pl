#!/usr/bin/perl

# modified from count_word.pl
sub countWords {
    # Arguments
	my ($find, $file) = @_;	
	
	# Open all file
	open F, $file or die;
    $find = lc $find;

    # Counter
    $countWord = 0;

    # Go thru each line
    while ($currLine = <F>) {
	    $currLine = lc $currLine;
	    @words = grep(/./, split(/[^a-z]/, $currLine));
	    foreach $i (@words) {
		    if ($i =~ /^$find$/i) {
			    $countWord++
		    }
	    }
    }
    
    return $countWord;
    
}


# modified from total_words.pl
sub totalWords {
    # Arguments
	my ($file) = @_;
	open F, $file or die;
	$totalWords = 0;
	while ($currLine = <F>) {
		@words = grep(/./, split(/[^a-zA-Z]/, $currLine));
	    $totalWords += 0+@words;
	}
	return $totalWords;
}

# Go thru each file
# From lab
$word = $ARGV[0];
foreach $file (glob "lyrics/*.txt") {	
    # Count word
	$wordCount = countWords($word, $file);
	$addWordCount = $wordCount + 1;

    # Count total word	
	$totalCount = totalWords($file);
	
	# Frequency
	$wordFreq = log($addWordCount/$totalCount);
	
	# get artist name
	@f1 = split("/", $file);
	@f2 = split(".txt", $f1[1]);
	$artist = $f2[0];
	# Replace _ with " " 
	$artist =~ s/_/ /g;
	
	# Print result
	printf("log((%d+1)/%6d) = %8.4f %s\n", $wordCount, $totalCount, $wordFreq, $artist);
	
}
