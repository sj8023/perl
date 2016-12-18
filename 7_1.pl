#!/usr/bin/perl -w
use strict;
print "please input a AA:";
my $input = <STDIN>;
my $dna;
my @dna = ();
srand (time||$$);
for (my $i = 0; $i < 3; $i++)
{ $dna .= randombase();
}
print "$dna\n";
exit;

sub randombase {
my (@base) = ('A', 'G', 'C', 'T');
return randomelement(@base);
}

sub randomelement {
my (@base) = @_;
return $base[rand @base];
}
