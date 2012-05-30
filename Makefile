#
# $Id: Makefile,v 1.3 2012/05/30 10:42:46 urs Exp $
#

RM = rm -f

programs = uuniq

.PHONY: all
all: $(programs)

.PHONY: clean
clean:
	$(RM) $(programs) *.o core

.SUFFIXES: .pl
.pl:
	cp $< $@
	chmod +x $@
