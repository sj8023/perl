#!/usr/bin/perl
use strict;
use warnings;

my $help = "$0 DNA\n\n";
my $man = "$0 DNA\nDNA must be in lowercasen\n\n";

if ($ARGV[0] eq "-h" || $ARGV[0] eq "--help"){
print $help;
}
if ($ARGV[0] eq "-m" || $ARGV[0] eq "--man"){
print $man;
}
