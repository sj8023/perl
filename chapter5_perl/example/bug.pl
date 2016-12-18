#!/usr/bin/perl -w
use strict;
my $dna = 'CGACGTACTTCAAGGCGA';
my $receivingcommittment;
my $previousbase = '';
my $subsequence = '';
if (@ARGV) {
    $subsequence = $ARGV[0];
}
else {
      $subsequence = 'TA';
}
my $base1 = substr( $subsequence, 0, 1);
my $base2 = substr( $subsequence, 1, 1);
my @dna = split('', $dna);
foreach (@dna){
	if ($receivingcommittment)
           {
		print;
	   }
	elsif ( $previousbase eq $base1) 
         {
	 if (/$base2/) 
            {
		print $base1, $base2;
		$receivingcommittment = 1;
	    }
         }
 $previousbase = $_;
}
print "\n";
exit;
