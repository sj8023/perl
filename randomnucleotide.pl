#!/usr/bin/perl -w
use strict;
my @nucleotide = ('A', 'G', 'C', 'T');
srand(time||$$);
for (my $i = 0; $i < 20; $i++)
{
print randomnucleotide(@nucleotide);
print "\t";
}
print "\n";
exit;
sub randomnucleotide {
my (@nuc) = @_;
return $nuc[rand @nuc];
}

