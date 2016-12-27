#!/usr/bin/perl -w
sub IUB_to_regexp {
my ($iub) = @_;
my $regular_expression = '';
my %iub2character_class = (
A => 'A',
C => 'C',
G => 'G',
T => 'T',
R => '[GA]',
Y => '[CT]',
M => '[AC]',
K => '[GT]',
S => '[GC]',
W => '[AT]',
B => '[CGT]',
D => '[AGT]',
H => '[ACT]',
V => '[ACG]',
N =>'[ACGT]',
);
$iub =~ s/\^//g;
for (my $i = 0; $i < length($iub); ++$i) {
$regular_expression .= $iub2character_class{substr ($iub, $i, 1)};
return $regular_expression;
}

sub parseREBASE {
my ($rebasefile) = @_;
use strict;
use warning;
use condon;
my @rebasefile =();
my %rebase_hash = ();
my $name;
my $site;
my $regexp;
my $rebase_filehandle = open_file($rebasefile);
while (<$rebase_filehandle>) {
(1.. /Rich Roberts/) and next;
/^\s*$/ and next;
my @fields = split (" ",$_);
$name = shift @fields;
$site = pop @fields;
$regexp = IUB_to_regexp($site);
$rebase_hash{$name} = "$site $regexp";
}
return %rebase_hash;
}
 
