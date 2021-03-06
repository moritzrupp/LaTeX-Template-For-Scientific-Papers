:: Set variables
@echo off sett DOCUMENT_NAME=Paper

taskkill /IM Acrobat.exe  

pdflatex -interaction=errorstopmode %DOCUMENT_NAME%.tex
makeglossaries %DOCUMENT_NAME%
pdflatex -interaction=errorstopmode %DOCUMENT_NAME%.tex
biber %DOCUMENT_NAME%
pdflatex -interaction=errorstopmode %DOCUMENT_NAME%.tex
pdflatex -interaction=errorstopmode %DOCUMENT_NAME%.tex

START "" %DOCUMENT_NAME%.pdf

:: Run Cleanup
call:cleanup

:cleanup
del %DOCUMENT_NAME%.bbl
del %DOCUMENT_NAME%-blx.bib
del %DOCUMENT_NAME%.bib.blg
del %DOCUMENT_NAME%.blg
del %DOCUMENT_NAME%.brf
del %DOCUMENT_NAME%.out
del %DOCUMENT_NAME%.idx
del %DOCUMENT_NAME%.lof
del %DOCUMENT_NAME%.lol
del %DOCUMENT_NAME%.lot
del %DOCUMENT_NAME%.synctex.gz
del %DOCUMENT_NAME%.toc
del %DOCUMENT_NAME%.glo
del %DOCUMENT_NAME%.tdo
del %DOCUMENT_NAME%.ist
del %DOCUMENT_NAME%.run.xml
del %DOCUMENT_NAME%.acn
del %DOCUMENT_NAME%.acr
del %DOCUMENT_NAME%.alg
del %DOCUMENT_NAME%.glg
del %DOCUMENT_NAME%.gls
del %DOCUMENT_NAME%.bcf
del %DOCUMENT_NAME%.xdy
del %DOCUMENT_NAME%.tps

del *.aux
del Content\*.aux
del Content\Comparison\*.aux
del Content\Conclusion\*.aux
del Content\Context\*.aux
del Content\Development\*.aux
del Content\Introduction\*.aux
del Content\Reviewing\*.aux
del Content\TechnicalBackground\*.aux
del Content\WorkflowAndBPM\*.aux
goto:eof
