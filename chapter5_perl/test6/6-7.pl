#!/usr/bin/perl -w
use strict;
my $file = 'filename:';
answer ($file);
exit;
sub answer {
my ($file) = @_;
print $file;
my $filename = <STDIN>;
chomp $filename;
my $FILE;
open  $FILE,'<', $filename or die "$0:failed to open input.file '$file': $!\n";
my @dna = <$FILE>;
my $dna = join ('', @dna);
$dna =~ s/\s//g;
close $FILE or warn "$0:failed to close input.file '$file':$!\n";
my $length = length $dna;
my $A = ($dna =~ tr/Aa//);
my $G = ($dna =~ tr/gG//);
my $C = ($dna =~ tr/Cc//);
my $T = ($dna =~ tr/tT//);
$A = $A/$length*100;
$G = $G/$length*100;
$C = $C/$length*100;
$T = $T/$length*100;
my $GC = ($G+$C)/($A+$G+$C+$T)*100;
print "A= $A%\nG= $G%\nT= $T%\nC= $C%\nGC= $GC%\n";
if ($dna =~ /^T+/)
{print "the dna has poly-T\n";}
}
