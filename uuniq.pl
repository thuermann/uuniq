#!/usr/bin/perl
#
# $Id: uuniq.pl,v 1.3 2012/09/16 05:09:51 urs Exp $
#
# Copy input lines to output removing duplicate lines.  In contrast to
# the standard uniq(1) utility, duplicate lines do not need to be
# adjacent to be removed.

use Getopt::Std;

if (!getopts("i")) {
    die "Usage: $0 [-i] [file...]\n";
}

while (<>) {
    $key = defined($opt_i) ? $key = lc($_) : $key = $_;
    if (!$seen{$key}) {
	$seen{$key} = 1;
	print;
    }
}
