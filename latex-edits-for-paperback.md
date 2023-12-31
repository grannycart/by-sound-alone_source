latex-edits-for-paperback.md
Last modified: 2023-12-31 16:12

# Notes for editing latex to prepare for paperback printing

* the Makefile has pandoc create a (standalone) raw latex file. But it needs a little polish. I'm using this latex file to format the book for print-on-demand. Here are the steps I took:

1. Run ```make clean latex``` to output a .tex file in the built-files/latex directory. This .tex file is what you want to make the rest of the edits to.
	* (There will also be a finished pdf in the built-files/pdf/ directory, but it won't be properly formatted for book printing.)
2. add \small before the body to make the main text a smaller font (reduces final book size by like 40 pages or something)
	* Actually, if you add the copyright page (number 7 below) the \small there will do the job
	* For printing book especially, put a \tiny before the CC license at end of file
	* Also for printing book: put a \newpage before the CC license at end of file
3. ~~do vim command ```:%s/chapter{/chapter\*{/gc``` to make chapter headers not display numbering~~
	* There's a global way to do this in Latex, but I don't remember it.
	* I changed the \chapters to \sections and it seems that pandoc disables section numbering, so this command is no longer needed (unless you go back to using \chapter instead of \section.
4. search for \section and add a \newpage before every chapter
	* so each chapter starts on a new page
	* preface and license will already have it from markdown
5. do vim command ```:%s/ /\\bigskip/g``` to replace invisible break character with a bigskip
6. Add small pigeon graphic to title page:
	* Add graphicx package:
		* ```\usepackage{graphicx}```
		* (This might happen from pandoc automatically if you include images in the .md, so look for it.)
	* Replace \author line with this to include pigeon graphic:
		* ```\author{Mark Torrey\\[5mm] \includegraphics[width=1in]{../cover/pigeon-logo.png}}```
		* (Note: there is a pdftitle and pdfauthor fields that are not the same as \title and \author. \title{} edits the actual compiled title.)
7. create the copyright page:
	* After the \maketitle, add:
	```
	\small
	\clearpage
	\emph{By Sound Alone}\\
	© 2024 Mark Torrey, CC BY-NC-SA (See license at end of book.)

	(Final Beta; Version-date: August 15, 2023)

	For more information, visit:\\
	grannycart.net/by-sound-alone/
	
	uuid: df78bb38-3009-4e40-a4ba-82a73e75a3c4
	\clearpage
	```
	* Take the date info from the \date line, and leave the \date{} with no content so it prints blank on the title page.
8. return text to \normalsize for the note on the last page with contact info and email sign up
9. Compile latex file; review compiled file
10. If you still need blank pages, Add blank pages with:
	```
	\newpage 

	\ % The empty page

	\newpage
	```
	* Some places to consider:
		* after copyright page 
		* after Preface
		* before License 
	* You can use this method to bring the page count up to a div/4
		* Or add pages as part of the pdf when you include the diagrams (number 11)
		* Ideally, any extra white pages would go between the last page of the book and the license
11. Add other matter to pdf:
	* Gather all the other necessary pdfs into a single directory:
		* the main compiled pdf
		* **Don't forget to add the diagrams!**
		* Extract a blank page (check that page 2 is a blank page, otherwise just find a blank somewhere in the pdf):
			* pdftk ./Subworldbook1.pdf cat 2 output ./blank-page.pdf
	* Use pdftk or some other pdf manipulation software to add the diagram pages and other matter to the file. Assemble the final pdf, adding blank pages where necessary to get the pages to flow correctly for printing, and get div/4 number of pages:
		* ```pdftk ./blank-page.pdf ./Prospect-interior-diagram_5.5x8.25-rotated.pdf ./Gnat-interior-diagram_5.5x8.25-rotated.pdf ./blank-page.pdf ./Subworldbook1.pdf cat output ./Subworldbook1+diagrams.pdf```
		* Ideally The note about signing up for the email list would be the first paper page inside the cover





