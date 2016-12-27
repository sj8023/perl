sub translate {
my ($dna) = @_;
use strict;
use condon;
my $protein = '';
my $condon;
for (my $i = 0; $i <= (length ($dna) - 2); $i += 3){
$protein .= condon(substr($dna, $i , 3));
}
return $protein;
}


sub condon {
my ($condon) = @_;
$condon = uc $condon;
my (%genetic_code) = (
'TCA' => 'S',
'TCC' => 'S',
'TCG' => 'S',
'TCT' => 'S',
'TTC' => 'F',
'TTT' => 'F',
'TTA' => 'L',
'TTG' => 'L',
'TAC' => 'Y',
'TAT' =>'Y',
'TAA' => '_',
'TAG' => '_',
'TGC' => 'C',
'TGT' => 'C',
'TGG' => 'W',
'CTA' => 'L',
'CTC' => 'L',
'CTG' => 'L',
'CTT' => 'L',
'CCA' => 'P',
'CCC' => 'P',
'CCG' => 'P',
'CCT' => 'P',
'CAC' => 'H',
'CAT' => 'H',
'CAA' => 'Q',
'CAG' => 'Q',
'CGA' => 'R',
'CGC' => 'R',
'CGG' => 'R',
'CGT' => 'R',
'ATA' => 'I',
'ATC' => 'I',
'ATT' => 'I',
'ATG' => 'M',
'ACA' => 'T',
'ACC' => 'T',
'ACG' => 'T',
'ACT' => 'T',
'AAC' => 'N',
'AAT' => 'N',
'AAA' => 'K',
'AAG' => 'K',
'AGC' => 'S',
'AGT' => 'S',
'AGA' => 'R',
'AGG' => 'R',
'GTA' => 'V',
'GTC' => 'V',
'GTG' => 'V',
'GTT' => 'V',
'GCA' => 'A',
'GCC' => 'A',
'GCG' => 'A',
'GCT' => 'A',
'GAC' => 'D',
'GAT' => 'D',
'GAA' => 'E',
'GAG' => 'E',
'GGA' => 'G',
'GGC' => 'G',
'GGG' => 'G',
'GGT' => 'G'
);
if(exists $genetic_code{$condon}) {
return $genetic_code{$condon};
}else{
print STDERR "Bad codon \"$condon\"!!\n";
exit;
}
}

sub get_file_data {
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

sub translate_frame {
my ($seq, $start, $end) = @_;
my $protein;
unless($end) {
$end  = length($seq);
}
return translate (substr($seq, $start - 1, $end - $start + 1));
}

sub parseREBASE {
my ($rebasefile) = @_;
use strict;
use condon;
my @rebasefile =();
my %rebase_hash = ();
my $name;
my $site;
my $regexp;
my $rebase_filehandle = open_file($rebasefile);
while(<$rebase_filehandle>) {
(1.. /Rich Roberts/) and next;
/^\s*$/ and next;
my @fields = split (" ",$_);
$name = shift @fields;
$site = pop @fields;
$regexp = IUB_to_regexp($site);
$rebase_hash{$name} = "$site $regexp";
}
return %rebase_hash;
}


sub open_file {
my ($filename) = @_;
my $FILE;
open $FILE, '<', $filename  or die "$0:failed to open input.file '$filename' :$!\n";
return $FILE;
}

sub match_position {
my ($regexp,$sequence) = @_;
use strict;
use condon;
my @positions= ();
while ($sequence =~ /$regexp/ig) {
push (@positions, pos($sequence) - length($&) +1);
}
return @positions;
}

sub IUB_to_regexp {
my ($iub) = @_;
my $regular_expression = '';
my %iub2character_class = (
A => 'A',
C => 'C',
G => 'G',
T => 'T',
R => '[GA]',
Y => '[CT]',
M => '[AC]',
K => '[GT]',
S => '[GC]',
W => '[AT]',
B => '[CGT]',
D => '[AGT]',
H => '[ACT]',
V => '[ACG]',
N =>'[ACGT]',
);
$iub =~ s/\^//g;
for (my $i = 0; $i < length($iub); ++$i) {
$regular_expression .= $iub2character_class{substr ($iub, $i, 1)};
}
return $regular_expression;
}
1;
