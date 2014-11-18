USE_LATEXMK= 	yes

otrmsg.pdf: otrmsg.tex sec.bib llncs biblatex-lncs

sec.bib: ../../sec.bib
	cp -R $^ $@

.PHONY: clean-all
clean-all: clean-llncs clean-biblatex-lncs
	${RM} sec.bib
	${RM} miun.depend.mk miun.tex.mk

miun.depend.mk miun.tex.mk:
	wget http://ver.miun.se/build/$@

include miun.depend.mk
include miun.tex.mk
