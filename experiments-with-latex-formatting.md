[subworld book1 experiments with latex formatting](subworld-book1/experiments-with-latex-formatting.md)
Last modified: Sat Nov 20, 2021  04:11PM

* the Makefile has pandoc create a (standalone) raw latex file. But it needs a little polish. I'm using this latex file to format the book for print-on-demand. Here are the steps I took:

1. Run make to output a .tex file in the built-files/ directory.
2. add \small before the body to make the main text a smaller font (reduces final book size by like 40 pages or something)
3. do vim command: :%s/chapter{/chapter\*{/g to make chapter headers not display numbering
	* There's a global way to do this in Latex, but I don't remember it.
4. Add small pigeon graphic to title page:
	* Add graphicx package:
		* \usepackage{graphicx}
		* (This might happen from pandoc automatically if you include images in the .md, so look for it.)
	* Add an carriage return and \includegraphics call to \author line:
		* \author{Mark Torrey\\[5mm] \includegraphics[width=1in]{../../cover/pigeon-logo.png}}
5. Review compiled file:
	* Consider putting a carriage return\\ in the title if it is not breaking in a good place. (Note: there is a pdftitle field that is not the same as \title. \title{} edits the actual compiled title.)
6. Use pdftk or some other pdf manipulation software to add the diagram pages to the beginning of the file.
	* pdftk ./sub-diagrams/Prospect/Prospect-interior-diagram_5.5x8.25-rotated.pdf ./sub-diagrams/Gnat/Gnat-interior-diagram_5.5x8.25-rotated.pdf ./built-files/latex/Subworldbook1.pdf cat output ~/Subworldbook1+diagrams.pdf
	* Alternatively: edit the latex to compile with the diagrams in place.


