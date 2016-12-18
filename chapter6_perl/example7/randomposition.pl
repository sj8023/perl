#!/usr/bin/perl -w
use strict;
my $dna = 'ACGTGCAAAGTTTGGCGC';
srand (time || $$);
for ( my $i = 0; $i < 20; $i++)
{
print randomposition($dna);
print "\t";
}
print "\n";
exit;
sub randomposition {
my ($string) = @_;
return int(rand(length $string));
}
