#!/usr/bin/perl -w
use strict;
use condon;
my %rebase_hash = ();
my @file_data = ();
my $query = '';
my $dna = '';
my $recognition_site = '';
my $regexp = '';
my @locations = ();
@file_data = get_file_data("simple.dna");
$dna = extract_sequence_from_data (@file_data);
%rebase_hash = parseREBASE('bionet.txt');
do {
print "Search for what restriction site for (or quit)?:";
$query = <STDIN>;
chomp $query;
if($query =~ /^\s*$/) {exit;}
if (exists $rebase_hash{$query} ) {
($recognition_site, $regexp) = split (" ", $rebase_hash{$query});
@locations = match_position($regexp, $dna);
if (@locations) {
print "Searching for $query $recognition_site $regexp\n";
print "A restriction site for $query at locations:\n";
print join (" ",@locations), "\n";
}
else {print "A restriction enzyme $query is not in the dna\n";}
}
} until ($query =~ /quit/);
exit;

