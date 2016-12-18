#!/usr/bin/perl -w
use strict;
print "please input a dna filename:";
my $filename = <STDIN>;
chomp $filename;
my $FILE;
open $FILE, '<', $filename or die "$0:failed to open input.file '$filename':$!\n";
my @dna = <$FILE>;
close $FILE or warn "$0:failed to open input.file '$filename':$!\n";
my $DNA = change(\@dna);
my $FH;
open $FH, '>', $filename or die "$0:failed to open input.file '$filename':$!\n";
select $FH;
print "$DNA";
close $FH or warn "$0:failed to open input.file '$filename':$!\n";
exit;
sub change {
my ($dna) = @_;
print "what you want to change:";
my $pro = <STDIN>;
chomp $pro;
print "subsitute:";
my $new = <STDIN>;
chomp $new;
my @DNA = @$dna;
my $DNA = join ('', @DNA);
$DNA =~ s/\s//g;
$DNA =~ s/$pro/$new/g;
return ($DNA);
}


