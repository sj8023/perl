#!/usr/bin/perl -w
use strict;
use utf8;
 $DNA = "AGCTAGCT";
 $dna = $DNA;
$dna =~ tr/AGCT/agct/;
print "$dna";
exit;
