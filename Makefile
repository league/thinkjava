LATEX = latex

DVIPS = dvips

PDFFLAGS = -dCompatibilityLevel=1.4 \
           -dCompressPages=true -dUseFlateCompression=true  \
           -dEmbedAllFonts=true -dSubsetFonts=true -dMaxSubsetPct=100

all:	thinkjava.tex
	latex thinkjava
	makeindex thinkjava
	latex thinkjava
	dvips -Ppdf -o thinkjava.ps thinkjava
	ghostview thinkjava.ps

pdf:	thinkjava.ps
	ps2pdf $(PDFFLAGS) thinkjava.ps thinkjava.pdf

clean:
	rm -f *~ *.aux *.log *.dvi *.idx *.ilg *.ind *.toc
