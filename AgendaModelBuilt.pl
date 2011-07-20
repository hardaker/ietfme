#!/usr/bin/perl

use strict;

my $day;
my $time;

print "import QtQuick 1.0\n";
print "ListModel {\n";

open(I, "agenda.txt");
while(<I>) {
    if (/(saturday|sunday|monday|tuesday|wednesday|thursday|friday|sunday)/i) {
	$day = $1;
    }
    if (/^(\d{4})-(\d{4})\s+(.*)/) {
	$time = "$1-$2";
	print "  ListElement {\n";
	print "    when: \"$time\"\n";
	print "     day: \"$day\"\n";
	print "    what: \"$3\"\n";
        print "  }\n";
    }
}
print "}\n";
