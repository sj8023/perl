#!/usr/bin/perl -w
use strict;
my $dna = 'AAAAGGGCTTG';
my $i;
my $mutate;
srand(time||$$);
$mutate = mutate($dna);
print "\nhere's the origin dna:\n";
print "$dna\n";
print "\nhere's the mutate dan:\n";
print "$mutate\n";
print "here's more mutate dna:\n";
for ($i = 0; $i <10; $i++)
{
 my $mutant = mutate ($dna);
print "$mutant\n";
}
exit;
sub mutate {
my ($dna) = @_;
my ($position) =  randomposition($dna);
my ($newbase);
do {
$newbase  = randomnucleotide();
}until ($newbase ne substr($dna,$position,1));
substr ($dna, $position, 1, $newbase);
return $dna;
}
sub randomposition {
my ($string) = @_;
return rand(length $string);
}

sub randomnucleotide {
my (@nucleotide) = ('A', 'G', 'C', 'T');
return randomelement(@nucleotide);
}

sub randomelement {
my (@nuc) = @_;
return $nuc[rand @nuc];
}

