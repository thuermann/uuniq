#!/usr/bin/perl
#
# $Id: uuniq.pl,v 1.1 2012/05/30 10:42:46 urs Exp $
#
# Copy input lines to output removing duplicate lines.  In contrast to
# the standard uniq(1) utility, duplicate lines do not need to be
# adjacent to be removed.

while (<>) {
    if (!$seen{$_}) {
	$seen{$_} = 1;
	print;
    }
}
