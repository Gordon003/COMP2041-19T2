#!/usr/bin/perl

use File::Copy qw(copy);

$version = 0;

while (-d ".snapshot.$version") {
    $version += 1;
}

$newFile = ".snapshot.$version";

print "Creating snapshot $version\n";

mkdir "./$newFile";

@files = <*>;
foreach $file (@files) {
    $result = substr($file, 0, 1);
    if ($file eq "snapshot.pl" || $result eq "."){
        next;
    }
    
    copy "$file", "$newFile/$file";
}

if ($ARGV[0] eq "load"){
    print "Restoring snapshot $ARGV[1] \n";

    $currentFile = "./.snapshot.$ARGV[1]";
    
    @files = <*>;
    foreach $file (@files) {
    
        $result = substr($file, 0, 1);
        if ($file eq "snapshot.pl" || $result eq "."){
            next;
        }
        
        copy "$currentFile/$file", "$file";
    
    }
        
}
