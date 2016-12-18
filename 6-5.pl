#!/usr/bin/perl -w
use strict;
print "please input a dnafilename:";
my $file = <STDIN>;
chomp $file;
testfile ($file);
exit;
sub testfile {
my ($filename) = @_;
if (!(-e $filename)) { print "the file doesn't exist\n";}
elsif (!(-f $filename)) { print "the file isn't the type of f\n";}
elsif (-z $filename){print "the file exist ,a type of f and zero\n";}
else {print "the file exist and a type of f and have content\n";}
exit;
}
