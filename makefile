DOCUMENT_NAME = Paper

# Build the LaTeX document.
all: report clean

# Remove output directory.
#clean:
#	cleanup

# cleanup tempfiles
clean:
	rm -f Content/*.aux *.aux $(DOCUMENT_NAME).tdo $(DOCUMENT_NAME).tps $(DOCUMENT_NAME).xdy $(DOCUMENT_NAME).bcf $(DOCUMENT_NAME).idx $(DOCUMENT_NAME).brf $(DOCUMENT_NAME).acn $(DOCUMENT_NAME).glo $(DOCUMENT_NAME).ist $(DOCUMENT_NAME).lof $(DOCUMENT_NAME).lot $(DOCUMENT_NAME).lol $(DOCUMENT_NAME).out $(DOCUMENT_NAME).toc $(DOCUMENT_NAME).alg $(DOCUMENT_NAME).glg $(DOCUMENT_NAME).gls $(DOCUMENT_NAME).acr $(DOCUMENT_NAME).blg $(DOCUMENT_NAME).bbl $(DOCUMENT_NAME)-blx.bib $(DOCUMENT_NAME).bib.blg $(DOCUMENT_NAME).run.xml


# Generate PDF output from LaTeX input files.
report:
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	makeglossaries -q $(DOCUMENT_NAME)
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	biber $(DOCUMENT_NAME)
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
