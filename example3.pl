#!/usr/bin/perl -w
use strict;
my ($USAGE) = "$0 dna\n";
unless (@ARGV) {
	
        print "$USAGE";
	exit;
}
my ($dna) = $ARGV[0];
my ($G) = countG($dna);
print "the G of $dna is :$G\n";
exit;
sub countG {
my ($dna) = @_;
my ($count) = 0;
$count = ($dna =~ tr/Gg//);
return $count;
}
