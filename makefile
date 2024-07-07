#=========================================================================
#	Environment		:	Ubuntu 22.04.3 LTS ~ Bionic Beaver
#						Gnome 42.9
#						GNU Make
#	Platform		:	x86_64-pc-linux-gnu (64bit)
#	Author			:	Bylli Andre Guel ~ byliguel@gmail.com
#	File			:	makefile
#	Description		:	GNU Make Script for TeX File Compiling
#		/home/byliguel/Documents/research/productions/
#		./controllability-for-elliptic-flow-case/
#
#	Created date	:	2023-06-14 ~ 08:22
#	Version			:	v23.06.1
#	Last revision	:	...
#=========================================================================

FILE = main
OUT = retrograde-heat-equation

default: last
#=========================================================================

pending:
	latexmk -pdf $(FILE)

last:
	latexmk $(FILE)
	dvips -E $(FILE).dvi -o $(FILE).eps
	epstopdf $(FILE).eps --debug --outfile=$(OUT).pdf
	rm -f $(FILE).pdf
	rm -f *.aux *.bbl *.blg *.toc *.log *.lot *.lof *.out *.dvi *.ps \
		*.maf *mtc* *mlf* *mlt* *.idx *.pdfsync *tmp* *.ain *.ilg *.ind \
		*.fdb_latexmk *.fls *.bcf *.eps *.run.xml
