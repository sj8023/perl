#!/usr/bin/perl -w
use strict;
my $protein = 'AAA';
my $mutate = mutate($protein);
print "the origin protein is $protein\n";
print "the mutate protein is $mutate\n";
exit;
sub mutate {
my ($dna) = @_;
my $position = randomposition($dna);
my $aa = randombase();
substr ($dna, $position, 1, $aa);
return $dna;
}
sub randomposition {
my ($string) = @_;
return int rand length $string;
}
sub randombase {
my @protein = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L', 'M', 'N','P','Q','R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z');
return randomelement(@protein);
}
sub randomelement {
my (@pro) = @_;
return $pro[rand @pro];
}
