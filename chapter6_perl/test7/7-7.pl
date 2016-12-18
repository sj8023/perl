#!/usr/bin/perl -w
use strict;
my $a;
my $g;
my $c;
my $t;
my $con;
srand (0);
$a = $ARGV[0];
$g = $ARGV[1];
$c = $ARGV[2];
$t = $ARGV[3];
$con = $a + $g + $c + $t;
if ($con != 1){exit;}
my @dna;
for ( my $i = 0; $i < 20; $i++)
{
my $element = random ($a, $g, $c, $t);
push (@dna, $element);
}
print " @dna\n";
exit;

sub random {
my ($a, $g, $c, $t) = @_;
my $ag = $a+$g;
my $agc = $a+$g+$c;
my $base;
my $i = rand (1);
if ($i<= $a ) { $base = 'A'};
if ($a < $i  && $i <= $ag) { $base = 'G'};
if ($ag < $i  && $i <= $agc) { $base = 'C'};
if ($agc < $i  && $i <= $con) { $base = 'T'};
return $base;
}


