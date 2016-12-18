#!/usr/bin/perl -w
use strict;
my $percent;
my @percents;
my $result;
my @random_dna = ();
srand (time||$$);
@random_dna = make_random_dna_set(10,10,10);
for (my $k = 0; $k < scalar @random_dna; $k++){
	for (my $i = $k+1; $i < scalar @random_dna; $i++)
	{
	$percent = matching_percentage($random_dna[$k], $random_dna[$i]);
	push (@percents, $percent);
        }
}
$result = 0;
foreach $percent (@percents) {
$result += $percent;
}
$result = $result / scalar(@percents);
$result = int($result*100);
print "in this run of the experiment ,the average percent of matching position is :$result%\n";
exit;

sub matching_percentage {
my ($string1, $string2) = @_;
my $count = 0;
for (my $i = 0; $i < length $string1; $i++)
{
 if (substr ($string1, $i, 1) eq substr($string2, $i, 1))
  { $count++};
}
return $count/(length $string1);
}

sub make_random_dna_set {
my $dna;
my @dna;
my ($min, $max, $num) = @_;
for (my $i = 0; $i < $num; $i++)
{
$dna = make_random_dna(10);
push(@dna, $dna);
}
return @dna;
}

sub  make_random_dna {
my ($length) = @_;
my $dna;
for (my $i = 0; $i < $length; $i++)
{
$dna .= randomnucleotide();
}
return $dna;
}

sub randomnucleotide {
my (@nucleotide) = ('A', 'G', 'T', 'C');
return randomelement(@nucleotide);
}

sub randomelement {
my (@nuc) = @_;
return $nuc[rand @nuc];
}



