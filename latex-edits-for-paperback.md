latex-edits-for-paperback.md
Last modified: 2023-08-15 21:08

# Notes for editing latex to prepare for paperback printing

* the Makefile has pandoc create a (standalone) raw latex file. But it needs a little polish. I'm using this latex file to format the book for print-on-demand. Here are the steps I took:

1. Run ```make clean latex``` to output a .tex file in the built-files/latex directory. This .tex file is what you want to make the rest of the edits to.
	* (There will also be a finished pdf in the built-files/pdf/ directory, but it won't be properly formatted for book printing.)
2. add \small before the body to make the main text a smaller font (reduces final book size by like 40 pages or something)
	* For printing book especially, put a \tiny before the CC license at end of file
	* Also for printing book: put a \newpage before the CC license at end of file
3. do vim command ```:%s/chapter{/chapter\*{/g``` to make chapter headers not display numbering
	* There's a global way to do this in Latex, but I don't remember it.
4. do vim command ```:%s/ /\\bigskip/g``` to replace invisible break character with a bigskip
5. do a vim find-and-replace for ... with \ldots
	* (It's possible the "smart" switch to pandoc does this for you (now). Also converts quotes ligatures and emdashes?)
6. Add small pigeon graphic to title page:
	* Add graphicx package:
		* ```\usepackage{graphicx}```
		* (This might happen from pandoc automatically if you include images in the .md, so look for it.)
	* Replace \author line with this to include copyleft and pigeon graphic:
		* ```\author{Mark Torrey CC BY-NC-SA 2023\\[5mm] \includegraphics[width=1in]{../../cover/pigeon-logo.png}}```
7. Compile latex file; review compiled file
	* Consider putting a carriage return\\ in the title or subtitle if it is not breaking in a good place. (Note: there is a pdftitle field that is not the same as \title. \title{} edits the actual compiled title.)
	* Gather all the other necessary pdfs into a single directory:
		* the main compiled pdf
		* the diagrams
		* Extract a blank page (check that page 2 is a blank page, otherwise just find a blank somewhere in the pdf):
			* pdftk ./Subworldbook1.pdf cat 2 output ./blank-page.pdf
8. Use pdftk or some other pdf manipulation software to add the diagram pages and other matter to the file. Assemble the final pdf, adding blank pages where necessary to get the pages to flow correctly for printing, and get div/4 number of pages:
	* ```pdftk ./blank-page.pdf ./Prospect-interior-diagram_5.5x8.25-rotated.pdf ./Gnat-interior-diagram_5.5x8.25-rotated.pdf ./blank-page.pdf ./Subworldbook1.pdf cat output ./Subworldbook1+diagrams.pdf```
	* If outputting for a downloadable pdf, consider using the standalone diagrams pdf instead.
		* Alternatively: edit the latex to compile with the diagrams in place.
