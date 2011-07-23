#!/usr/bin/perl

use strict;
use CGI qw(escapeHTML);

my $day;
my $time;

print "<ietfschedule>\n";
open(I, "agenda.txt");
my $slot = 0;
while(<I>) {
    if (/^(\d+(?: [A-F]+|))\s+([A-Z]{3})\s+(\w+)\s+(.*)/) {
	my ($room, $area, $wgname, $wgdescription) = ($1, $2, $3, $4);
	$room =~ s/\s*$//;

	print "      <meeting>\n";
	print "        <room>" . escapeHTML($room) . "</room>\n";
	print "        <area>" . escapeHTML($area) . "</area>\n";
	print "        <wgname>" . escapeHTML($wgname) . "</wgname>\n";
	print "        <wgdescription>" . escapeHTML($wgdescription) . "</wgdescription>\n";
	print "      </meeting>\n";
    }
    if (/^(saturday|sunday|monday|tuesday|wednesday|thursday|friday|sunday)/i) {
	print "    </slot>\n" if ($slot);
	print "  </$day>\n" if (defined($day));
	$day = cap($1);
	print "  <$day>\n";
	$slot = 0;
    }
    if (/^(\d{4})-(\d{4})\s+(.*)/) {
	print "    </slot>\n" if ($slot);
	print "    <slot>\n";
	print "      <start>$1</start>\n";
	print "      <end>$2</end>\n";
	print "      <what>$3</what>\n";
	$slot = 1;
    }
}
print "    </slot>\n";
print "  </$day>\n";
print "</ietfschedule>\n";

sub cap {
    my ($it) = @_;
    $it =~ s/^(.)(.*)/uc($1) . lc($2)/e;
    return $it;
}

