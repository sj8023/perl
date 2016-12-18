#!/usr/bin/perl -w

use strict;
my $dna = 'AGCT';
print "the origin dna is: $dna\n";
my @newdna = change($dna);
print "the change dna is :@newdna\n";
exit;

sub change {
my ($dna) = @_;
my @dna = split('',$dna);
my @newbase;
for (my $posotion = 0; $posotion < length $dna; $posotion++){
my $i = rand @dna;
my $base = $dna[$i];
push (@newbase,$base);
splice (@dna,$i,1);}
return @newbase;
}
