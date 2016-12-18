#!/usr/bin/perl -w
use strict;
use condon;
my $dna = 'CGACGTCTT';
my $protein = '';
my $condon;
for (my $i = 0; $i <= (length ($dna) - 2); $i += 3){
$condon = substr($dna, $i , 3);
$protein .= condon($condon);
}
print "i translated the dna:$dna into protein $protein\n";
exit;
