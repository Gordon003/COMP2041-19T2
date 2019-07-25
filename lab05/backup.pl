#!/usr/bin/perl

$input = $ARGV[0];
$version = 0;

while (-e ".$input.$version") {
    $version += 1;
}

$newFile = ".$ARGV[0].$version";

# Create file
open FILE1, '<'.$input;
open FILE2, '>'.$newFile;

while ($row = <FILE1>) {
    print FILE2 "$row";
}

close FILE1;
close FILE2;

print "Backup of '$input' saved as '$newFile'\n";
