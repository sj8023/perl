#!/usr/bin/perl -w
use strict;
my $dna1 = 'AGCT';
my $dna2 = 'agct';
my $dna = linkage(\$dna1, \$dna2);
print "$dna\n";
exit;
sub linkage {
my ($dna1, $dna2) = @_;
$$dna1 .= $$dna2;
return ($$dna1);
}
