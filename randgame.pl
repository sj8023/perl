#!/usr/bin/perl -w
use strict;
my $count;
my $input;
my $number;
my $sentence;
my $story;
my @nouns = ( 'Dad', 'TV', 'Mom','Groucho', 'Rebecea', 'Harpo', 'Robin Hood', 'Joe and Moe');
my @verbs = ( 'ran to', 'giggled with', 'put hot sauce into the orange juice of', 'exploded', 'dissolved', 'sang stupid song with', 'jumped with');
my @prepositions = ( 'at the store', 'over the rainbow', 'just for the fun of it', 'at the beach', 'before dinner', 'in New York City', 'in a dream', 'around the world');
srand (time || $$);
do {
for ($count = 0; $count < 6; $count++)
{
$sentence = $nouns[rand @nouns] . $verbs[rand @verbs] . $nouns[rand @nouns] . $prepositions[rand @prepositions];
$story .= $sentence;
}
print "\n$story\n";
print "\nType \"quit\" to quit ,or press Enter to contine:";
$input = <STDIN>;
} until ($input =~ /^\s*q/i);
exit;
