compilecmd=pdflatex -shell-escape -interaction=nonstopmode
SOURCE=${NUM}

.PHONY: clean solution nosolution

solution:
	-$(compilecmd) $(SOURCE).tex
	-$(compilecmd) $(SOURCE).tex
	@mv $(SOURCE).pdf $(SOURCE)Loesung.pdf
clean:
	@rm -f $(SOURCE).aux
	@rm -f $(SOURCE).aux.diff
	@rm -f $(SOURCE).bbl
	@rm -f $(SOURCE).tex.bak
	@rm -f $(SOURCE).tex~
	@rm -f $(SOURCE).bcf
	@rm -f $(SOURCE).blg
	@rm -f $(SOURCE).lof
	@rm -f $(SOURCE).log
	@rm -f $(SOURCE).out
	@rm -f $(SOURCE).run.xml
	@rm -f $(SOURCE).tdo
	@rm -f $(SOURCE).tex.blg
	@rm -f $(SOURCE).thm
	@rm -f $(SOURCE).toc
	@rm -f $(SOURCE).xmpdata
	@rm -f $(SOURCE).pdf
	@rm -f creationdate.lua
	@rm -f creationdate.timestamp
	@rm -f pdfa.xmpi
	@rm -f texput.lo

nosolution:
	-$(compilecmd) "\newcommand\nosolution{}\input{$(SOURCE).tex}"
	-$(compilecmd) "\newcommand\nosolution{}\input{$(SOURCE).tex}"
	@mv $(SOURCE).pdf $(SOURCE)Uebungsblatt.pdf
