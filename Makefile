.PHONY: all
all: otrmsg-paper.pdf otrmsg-slides.pdf

OTRMSG+= 	otrmsg-content.tex otrmsg-preamble.tex biblatex-lncs
OTRMSG+= 	otrmsg.bib surveillance.bib crypto.bib
OTRMSG+= 	libbib.sty

otrmsg-paper.pdf: otrmsg-paper.tex ${OTRMSG} llncs
otrmsg-slides.pdf: otrmsg-slides.tex ${OTRMSG}

makefiles libbib:
	git submodule update --init $@

### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
