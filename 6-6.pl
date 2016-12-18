#!/usr/bin/perl -w
for ($i =0 ; $i <5; $i++)
{
 $input = 'input a dnafilename:';
 $output = answer($input);
 if (-e $output ) {print "exists\n";}
}
exit;
sub answer {
my ($signal) = @_;
print $signal;
my $answer = <STDIN>;
chomp $answer;
return $answer;
}
