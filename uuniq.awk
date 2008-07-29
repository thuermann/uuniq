#!/usr/bin/awk -f
#
# $Id: uuniq.awk,v 1.1 2008/07/29 08:47:52 urs Exp $
#
# Copy input lines to output removing duplicate lines.  In contrast to
# the standard uniq(1) utility, duplicate lines do not need to be
# adjacent to be removed.

{
    if (!seen[$0]) {
	seen[$0] = 1
	print
    }
}
