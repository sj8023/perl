#!/usr/bin/perl -w
use strict;
my $size_of_set = 12;
my $minimum = 15;
my $maximum = 30;
my @random_dna = ();
srand(time||$$);
@random_dna = make_random_dna_set($minimum, $maximum, $size_of_set);
print "here's the array of $size_of_set randomly generated dna sequence with length between $minimum and $maximum:\n";
foreach my $dna(@random_dna) {
print "$dna\n";
}
print "\n";
exit;

sub make_random_dna_set {
my ($minimum, $maximum, $size_of_set) = @_;
my $length;
my $dna;
my @set;
$length = randomlength($minimum, $maximum);
for (my $i = 0; $i < $size_of_set; $i++)
{
$dna = make_random_dna($length);
push (@set, $dna);
}
return @set;
}

sub randomlength {
my ($min , $max) = @_;
return (int(rand ($max-$min+1))+$min);
}

sub make_random_dna {
my ($length) = @_;
my $dna;
for (my $i =0; $i < $length ; $i++)
{
$dna .= randomnucleotide();
}
return $dna;
}

sub randomnucleotide {
my (@nucleotide) = ('A', 'G', 'C', 'T');
return randomelement(@nucleotide);
}

sub randomelement {
my (@nuc) = @_;
return $nuc[rand @nuc];
}


