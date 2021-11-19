subworld-book1/experiments-with-latex-formatting.md
Last modified: Fri Nov 19, 2021  12:02PM

* the Makefile has pandoc create a (standalone) raw latex file. But it needs a little polish. I'm using this latex file to format the book for print-on-demand. Here are the steps I took:

1. Run make to output a .tex file in the built-files/ directory.
2. add \small before the body to make the main text a smaller font (reduces final book size by like 40 pages or something)
3. do vim command: :%s/chapter{/chapter\*{/g to make chapter headers not display numbering
	* There's a global way to do this in Latex, but I don't remember it.
4. Use pdftk or some other pdf manipulation software to add the diagram pages to the beginning of the file.
	* Alternatively: edit the latex to compile with the diagrams in place.


