#!/usr/bin/perl -w
use strict;
my $base;
my $guess;
do {
print "please input a base:";
$base = <STDIN>;
chomp $base;
$guess = randombase();
} until ($base eq $guess);
print "correct\n";
exit;
sub randombase {
my @base = ('A', 'G', 'C', 'T');
return randomelement(@base);
}
sub randomelement {
my (@base) = @_;
return $base[rand @base];
}
