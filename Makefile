LATEX = latex

DVIPS = dvips

PDFFLAGS = -dCompatibilityLevel=1.4 \
           -dCompressPages=true -dUseFlateCompression=true  \
           -dEmbedAllFonts=true -dSubsetFonts=true -dMaxSubsetPct=100

all:	thinkapjava.tex
	latex thinkapjava
	makeindex thinkapjava
	latex thinkapjava
	dvips -Ppdf -o thinkapjava.ps thinkapjava
	ghostview thinkapjava.ps

pdf:	thinkapjava.ps
	ps2pdf $(PDFFLAGS) thinkapjava.ps thinkapjava.pdf

clean:
	rm -f *~ *.aux *.log *.dvi *.idx *.ilg *.ind *.toc