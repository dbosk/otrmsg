PUB_SITES?=			csc sys
PUB_FILES= 			otrmsg.pdf
PUB_CATEGORY= 		

PUB_SERVER-csc= 	u-shell.csc.kth.se
PUB_METHOD-csc= 	ssh
PUB_DIR-csc= 		~/public_html

PUB_SERVER-sys= 	sftp.sys.kth.se
PUB_METHOD-sys= 	ssh
PUB_DIR-sys= 		~/public_html

otrmsg.pdf: otrmsg.tex llncs
otrmsg.pdf: otrmsg-content.tex
otrmsg.pdf: otrmsg.bib surveillance.bib crypto.bib

### INCLUDES ###

INCLUDES= 	depend.mk tex.mk pub.mk

define inc
ifeq ($(findstring $(1),${MAKEFILE_LIST}),)
$(1):
	wget https://raw.githubusercontent.com/dbosk/makefiles/master/$(1)
include $(1)
endif
endef
$(foreach i,${INCLUDES},$(eval $(call inc,$i)))
