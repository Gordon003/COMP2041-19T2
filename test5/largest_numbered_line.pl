#!/usr/bin/perl

# Array
# Lines
@lines = ();
# largest number for each line
@largestNum = ();

# Go thru each input
while ($line = <STDIN>){

    # Check that line has any number at all
    $check = ($line =~ /[0-9]/);

    # If contains number, keep going
    if ( $check ){
    
        # Check number in that line
        @currLine = ($line =~ /([-]?[0-9]*[\.]?[0-9]+)/g);
        
        # Sort and get largest number in currLine
        @currLine = sort{$b <=> $a}(@currLine);
        $currLargestNum = $currLine[0];
        
        # push result into array
        push @lines, $line;
        push @largestNum, $currLargestNum;
        
    }
    
}

# get largest number
@largestValues = sort{$b <=> $a}(@largestNum);
$largestValue = $largestValues[0];

# print all lines with largest number
$numLines = @lines;
$count = 0;

while ($count < $numLines){

    $curr_line = $lines[$count];
    $curr_largest_number = $largestNum[$count];
    
    # If has that number, print it
    if ($curr_largest_number == $largestValue){
        print "$curr_line";
    }
    
    $count++;
    
}

