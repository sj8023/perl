#!/usr/bin/perl -w
use strict;
my $search;
my $USAGE1 = "$0 : 1\n";
my $input = $ARGV[0];
search ($input);
exit;
sub search {
($search) = @_;
$search =~ s/[^-]//g;
my $h = '1';
my $help = '2';
my $m = '3';
print "$USAGE";
}

