#!/usr/bin/perl -w
use strict;
my $code ='ACG';
my $mutate = mutate($code);
print "the origin code is $code\n";
print "the mutate code is $mutate\n";
exit;
sub mutate {
my ($code) = @_;
my $position;
$position = int rand length $code;
my @code;
@code = split ('', $code);
my $base;
do{
$base = $code[rand @code];
}until ($base ne  substr($code, $position,1));
substr($code, $position, 1, $base);
return $code;
}
