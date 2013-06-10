DOCUMENT_NAME = Paper

# Build the LaTeX document.
all: outputdir report cleanup

# Remove output directory.
clean:
	cleanup

# cleanup tempfiles
cleanup:
	rm -f Inhalt/*.aux *.aux $(DOCUMENT_NAME).tdo $(DOCUMENT_NAME).idx $(DOCUMENT_NAME).brf $(DOCUMENT_NAME).acn $(DOCUMENT_NAME).glo $(DOCUMENT_NAME).ist $(DOCUMENT_NAME).lof $(DOCUMENT_NAME).lot $(DOCUMENT_NAME).lol $(DOCUMENT_NAME).out $(DOCUMENT_NAME).toc $(DOCUMENT_NAME).alg $(DOCUMENT_NAME).glg $(DOCUMENT_NAME).gls $(DOCUMENT_NAME).acr $(DOCUMENT_NAME).blg $(DOCUMENT_NAME).bbl

# Create LaTeX output directory.
outputdir:
	$(shell mkdir $(OUTPUT_DIR) 2>/dev/null)

# Generate PDF output from LaTeX input files.
report:
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	bibtex $(DOCUMENT_NAME)
	makeglossaries -q $(DOCUMENT_NAME)
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)
	pdflatex -interaction=errorstopmode $(DOCUMENT_NAME)