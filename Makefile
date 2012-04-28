#
# $Id: Makefile,v 1.2 2012/04/28 05:21:13 urs Exp $
#

RM = rm -f

programs = uuniq

.PHONY: all
all: $(programs)

.PHONY: clean
clean:
	$(RM) $(programs) *.o core

.SUFFIXES: .awk
.awk:
	cp $< $@
	chmod +x $@
