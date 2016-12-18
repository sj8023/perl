#!/usr/bin/perl -w
$dna = "AGCTAGCTA";
$long_dna = add($dna);
print "the AGCCT is and to the $dna is : $long_dna\n";
exit;
sub add {
my ($dna) = @_;
$dna .= 'AGCCT';
return $dna;
}
