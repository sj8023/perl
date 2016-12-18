#!/usr/bin/perl -w
use strict;
my @i = ( '1', '2', '3' );
my @j = ( 'A', 'B', 'C');
print "in main program ,before calling subroutine: i = @i\n";
print "in main program ,before calling subroutine: j = @j\n";
reference_sub(\@i,\@j);
print "in main program ,after calling subroutine: i = @i\n";
print "in main program ,after calling subroutine: j = @j\n";
exit;
sub reference_sub {
my ($i, $j)  = @_;
print "in subroutine, i = @$i\n";
print "in subroutine, j = @$j\n";
shift @$i;
push (@$j, '4');
}



