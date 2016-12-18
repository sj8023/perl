#!/usr/bin/perl -w
use Benchmark qw (timethese cmpthese);
print "please input a dnafilename :";
$file = <STDIN>;
chomp $file;
open $FILE, '<', $file or die "$0:failed to open the input.file '$file' :$!\n";
@dna = <$FILE>;
close $FILE or warn "$0:failed to close the input.file '$file' :$!\n";
$dna = join ('', @dna);
$dna =~ s/\s//g;
print "please input a  motif:";
$motif = <STDIN>;
chomp $motif;
$r = timethese (0, { 
a => sub {study $dna =~ /$motif/;},
b => sub {$dna =~ /$motif/;}
});
cmpthese $r;
exit;

