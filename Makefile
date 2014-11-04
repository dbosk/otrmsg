LLNCS= 			./
BIBLATEX-LNCS= 	./
USE_LATEXMK= 	yes

otrmsg.pdf: otrmsg.tex sec.bib llncs biblatex-lncs

sec.bib: ../../sec.bib
	cp -R $^ $@

clean: llncs-clean biblatex-lncs-clean
	${RM} sec.bib

miun.depend.mk:
	wget http://ver.miun.se/build/$@

include miun.depend.mk
include miun.tex.mk
