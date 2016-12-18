#!/usr/bin/perl -w
use strict;
my $dna = 'AGCT';
my @base = countbase($dna);
my $base = join ('%', @base);
print "$base" , "%" ,"\n";
exit;
sub countbase {
my ($dna1) = @_;
my $A = ($dna1 =~ tr/Aa//);
my $T = ($dna1 =~ tr/Tt//);
my $G = ($dna1 =~ tr/Gg//);
my $C = ($dna1 =~ tr/Cc//);
my $l = length $dna1;
$A = $A/$l*100;
$T = $T/$l*100;
$G = $G/$l*100;
$C = $C/$l*100;
return ($A, $T, $G, $C);
}

