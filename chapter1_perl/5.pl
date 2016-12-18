#!/usr/bin/perl -w
$DNA = "agct";
print "this is dna:";
print "$DNA\n\n";
print "this is a DNA:";
print "\U$DNA\n\n";
$RNA = reverse $DNA;
print "this is a RNA :";
print "\L$RNA\n\n";
exit;

