#!/usr/bin/perl -w
use strict;
my ($i) = 2;
simple_sub($i);
print "in main program,after the subroutine call,\$i equals $i\n";
exit;
sub simple_sub {
$i += 100;
print "in subroutine simple_sub,\$i equals $i\n";
}
