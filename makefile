DOCS_FILE=docs.mk

MAINTEX=main.tex
TARGET=техническое_задание_MNTABP3.pdf

all:
	$(MAKE) -f $(DOCS_FILE) all MAINTEX=$(MAINTEX) TARGET=$(TARGET)

clean:
	$(MAKE) -f $(DOCS_FILE) clean MAINTEX=$(MAINTEX) TARGET=$(TARGET)

distclean:
	$(MAKE) -f $(DOCS_FILE) distclean MAINTEX=$(MAINTEX) \
        TARGET=$(TARGET)
