#
# $Id: Makefile,v 1.1 2008/07/29 08:47:52 urs Exp $
#

.SUFFIXES: .awk
.awk:
	cp $< $@
	chmod +x $@
