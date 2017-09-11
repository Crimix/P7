##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind

pdflatex: P7.tex
	rm -f P7.pdf
	pdflatex --synctex=1 P7.tex
	bibtex P7
	pdflatex --synctex=1 P7.tex
	pdflatex --synctex=1 P7.tex
	rm -f $(OTHER) $(PS)
clean:
	rm -f $(OTHER) $(PS)

nobib: P7.tex
	pdflatex --synctex=1 P7.tex
	pdflatex --synctex=1 P7.tex
	pdflatex --synctex=1 P7.tex
	rm -f $(OTHER) $(PS)
