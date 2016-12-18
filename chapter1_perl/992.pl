#!/usr/bin/perl -w
use utf8;
for (my $i = 1; $i <= 9; $i++)
{
 for (my $j = 1; $j <= $i; $j++)
     { print "$j" . "x" . "$i" . "=" . $i*$j . "\t";
 if ( $i==$j)
    { print "\n";}
  }
}
exit;
