:: Called from Notepad++ Run
:: [path_to_bat_file] "$(CURRENT_DIRECTORY)" "$(NAME_PART)"

:: Change Drive and  to File Directory
%~d1
cd %1

taskkill /IM Acrobat.exe  
pdflatex %2.tex
biber %2
makeglossaries -q %2
pdflatex %2.tex
pdflatex %2.tex
::makeindex.exe %2.nlo -s nomencl.ist -o %2.nls
::pdflatex %2.tex
START "" %2.pdf

:: Run Cleanup
call:cleanup

:cleanup
del %2.bbl
del %2-blx.bib
del %2.bib.blg
del %2.blg
del %2.brf
del %2.out
del %2.idx
del %2.lof
del %2.lol
del %2.lot
del %2.synctex.gz
del %2.toc
del %2.glo
del %2.tdo
del %2.ist
del %2.run.xml
del %2.acn
del %2.acr
del %2.alg
del %2.glg
del %2.gls
del %2.bcf
del %2.xdy

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