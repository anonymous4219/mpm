
PACKAGE=acmart

DEV=-dev # To switch dev on
#DEV=


BIBLATEXFILES= $(wildcard *.bbx) $(wildcard *.cbx) $(wildcard *.dbx) $(wildcard *.lbx)

SAMPLEBIBLATEXFILES=$(patsubst %,samples/%,$(BIBLATEXFILES))


all: paper.pdf

paper.pdf:  paper.dtx   $(PACKAGE).cls
	pdflatex paper
	- bibtex paper
	pdflatex paper
	- makeindex -s gind.ist -o paper.ind paper.idx
	- makeindex -s gglo.ist -o paper.gls paper.glo
	pdflatex paper
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' paper.log) \
	do pdflatex paper; done

docclean:
	$(RM)  *.log *.aux \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls *.cut *.hd \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi \
	samples/$(PACKAGE).cls \
	samples/$(PACKAGE)-tagged.cls \
	samples/ACM-Reference-Format.bst \
	samples/*.log samples/*.aux samples/*.out \
	samples/*.bbl samples/*.blg samples/*.cut samples/*.toc \
	samples/acm-jdslogo.png \
	samples/*.run.xml samples/*.bcf $(SAMPLEBIBLATEXFILES)


clean: docclean
	$(RM)  $(PACKAGE).cls $(PACKAGE)-tagged.cls \
	samples/*.tex

