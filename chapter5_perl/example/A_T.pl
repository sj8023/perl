#!/usr/bin/perl -w
$dna = 'AAAA';
$result = A_T($dna);
print "the A is replaced by T in $dna is $result\n";
exit;
sub A_T {
my ($result) = @_;
my ($dna) = $result;
$dna =~ s/A/T/g;
return ($dna);
}
