#!/usr/bin/perl -w
use strict;
use condon;
my @file_data = ();
my $dna = '';
my $revcom = '';
my $protein = '';
@file_data = get_file_dna("1.pep");
$dna = extract_sequence_from_data(@file_data);
print "\n-------orf1--------\n\n";
$protein = translate_frame($dna,1);
print_sequence($protein,5);
print "\n-------orf2--------\n\n";
$protein = translate_frame($dna,1);
print_sequence($protein,5);
print "\n-------orf3--------\n\n";
$protein = translate_frame($dna,1);
print_sequence($protein,5);
$revcom = revom($dna);
print "\n-------orf4--------\n\n";
$protein = translate_frame($revcom,1);
print_sequence($protein,5);
print "\n-------orf5--------\n\n";
$protein = translate_frame($revcom,1);
print_sequence($protein,5);
print "\n-------orf6--------\n\n";
$protein = translate_frame($revcom,1);
print_sequence($protein,5);
exit;
