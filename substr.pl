#!/usr/bin/perl -w
use strict;
my $dna = 'AGCTGCTGA';
my $seq;
if (@ARGV) {$seq = $ARGV[0];}
else { $seq = 'GC';}
my $len = length $dna;
my $i;
for ($i = 0; $i < $len-1; $i++)
{my $fact = substr ($dna , $i, 2);
  if ($fact =~ /$seq/)
  {
   my $dna1 = substr($dna, $i);
   print "$dna1";
   }
}
exit;
  


