#!/usr/bin/perl

use strict;

my $day;
my $time;

print "<ietfschedule>\n";
open(I, "agenda.txt");
while(<I>) {
    if (/^(saturday|sunday|monday|tuesday|wednesday|thursday|friday|sunday)/i) {
	print "  </$day>\n" if (defined($day));
	$day = cap($1);
	print "  <$day>\n";
    }
    if (/^(\d{4})-(\d{4})\s+(.*)/) {
	print "    <slot>\n";
	print "      <start>$1</start>\n";
	print "      <end>$2</end>\n";
	print "      <what>$3</what>\n";
	print "    </slot>\n";
    }
}
print "  </$day>\n";
print "</ietfschedule>\n";

sub cap {
    my ($it) = @_;
    $it =~ s/^(.)(.*)/uc($1) . lc($2)/e;
    return $it;
}
