#!/usr/bin/perl
#
# $Id: uuniq.pl,v 1.2 2012/05/30 10:43:00 urs Exp $
#
# Copy input lines to output removing duplicate lines.  In contrast to
# the standard uniq(1) utility, duplicate lines do not need to be
# adjacent to be removed.

use Getopt::Std;

if (!getopts("i")) {
    die "Usage: $0 [-i] [file...]\n";
}

while (<>) {
    if (defined($opt_i)) {
	($key = $_) =~ tr [A-Z] [a-z];
    } else {
	$key = $_;
    }
    if (!$seen{$key}) {
	$seen{$key} = 1;
	print;
    }
}
