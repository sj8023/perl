#!/usr/bin/perl -w
use strict;
my $dna_file = '1.pep';
my @dna_file = get_file_dna($dna_file);
my $sequence = extract_sequence_from_data(@dna_file);
print revom($sequence);
print_sequence($sequence,2);
exit;

sub get_file_dna {
my ($file) = @_;
use strict;
my $FILE;
open $FILE, '<', $file or die "$0:the inputfile '$file' can't open $!\n";
my @file = <$FILE>;
close $FILE or warn "$0:the inputfile '$file' can't close $!\n";
return @file;
}

sub extract_sequence_from_data {
use strict;
my (@fasta_file_data) = @_;
my $sequence = '';
foreach my $line (@fasta_file_data) {
if ($line =~ /^\s*$/) {next;}
elsif ($line =~ /^\s*#/) {next;}
elsif ($line =~ /^>/) {next;}
else { $sequence .= $line;}
}
$sequence =~ s/\s//g;
return $sequence;
}

sub print_sequence {
use strict;
my ($sequence, $length) = @_;
for (my $i = 0; $i < length($sequence); $i += $length) {
print substr($sequence, $i, $length) , "\n";
}
}

sub revom {
my ($dna) = @_;
my ($revcom) = reverse($dna);
$revcom =~ tr/AGCTagct/TCGATCGA/;
return $revcom;
}

#sub translate_frame {
#my ($seq, $start, $end) = @_;
#my $protein;
#unless($end) {
#$end  = length($seq);
#}
#return translate (substr($seq, $strat-1, $end-$start+1);
#}


