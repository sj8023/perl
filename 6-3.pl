#!/usr/bin/perl -w
use strict;
my $input = 'input dna sequence:';
my $output = answer($input);
print "$output\n";
sub answer {
my ($signal) = @_;
print $signal;
my $answer = <STDIN>;
chomp $answer;
return $answer;
}
