latex-edits-for-paperback.md
Last modified: 2025-05-14 23:17

# Notes for editing latex to prepare for paperback printing

* the Makefile has pandoc create a (standalone) raw latex file. But it needs a little polish. I'm using this latex file to format the book for print-on-demand. Here are the steps I took:
* Note: If your page count changes by any significant margin, you need to download the template from B&N and re-adjust the cover layout (particularly the spine) to fit the new book dimensions. (A different page count yields a fatter or skinnier book, so the horizontal dimension changes.)
* Also: BN apparently adds two pages for a barcode _inside_ the book. So submit div/4+2 pages to them for the interior file

1. Run `make clean latex` to output a .tex file in the built-files/latex directory. This .tex file is what you want to make the rest of the edits to.
	* (There will also be a finished pdf in the built-files/pdf/ directory, but it won't be properly formatted for book printing.)
2. add \small before the body to make the main text a smaller font (reduces final book size by like 40 pages or something)
	* Actually, if you add the copyright page (number 7 below) the \small there will do the job
	* For printing book especially, put a \tiny before the CC license at end of file
	* Also for printing book: put a \newpage before the CC license at end of file
3. ~~do vim command `:%s/chapter{/chapter\*{/gc` to make chapter headers not display numbering~~
	* There's a global way to do this in Latex, but I don't remember it.
	* I changed the \chapters to \sections and it seems that pandoc disables section numbering, so this command is no longer needed (unless you go back to using \chapter instead of \section.
4. search for \section and add a \newpage before every chapter
	* so each chapter starts on a new page
	* preface and license will already have it from markdown
5. do vim command `:%s/ /\\bigskip/g` to replace invisible break character with a bigskip
6. Add small pigeon graphic to title page:
	* Add graphicx package:
		* `\usepackage{graphicx}`
		* (This might happen from pandoc automatically if you include images in the .md, so look for it.)
	* Replace \author line with this to include pigeon graphic:
		* `\author{Mark Torrey\\[5mm] \includegraphics[width=1in]{../cover/pigeon-logo.png}}`
		* (Note: there is a pdftitle and pdfauthor fields that are not the same as \title and \author. \title{} edits the actual compiled title.)
7. create the copyright page:
	* After the \maketitle, add:
	```
	\small
	\clearpage
	\emph{By Sound Alone}\\
	© 2025 Mark Torrey, CC BY-NC-SA (See license at end of book.)

	(Version-date: January 1, 2024)

	For more information, visit:\\
	bysoundalone.net\\
    (E-book version available free of charge)
	
	uuid: df78bb38-3009-4e40-a4ba-82a73e75a3c4
	\clearpage
	```
	* Take the date info from the \date line, and leave the \date{} with no content so it prints blank on the title page.
8. Set up Three things to do if you enjoy this book page:
    * You might have to play with various things to get it to all fit on one page. You really want it to all fit on one page.
    * Set new margins: After \newpage, add: `\newgeometry{margin=1cm}`
    * remove any \bigskips from the beginning and end of this page (Though there shouldn't be any now after I removed those characters from the markdown)
    * Try chaning \section to \subsection to make the title of the page smaller
	* Try setting text to \normalsize, though you might need \small 
9. Compile latex file; review compiled file
	* Note: use pdflatex to compile. Even though `make pdf` uses the xelatex engine, xelatex causes more problems than it solves. For this final production paper book, stick to traditional `pdflatex`
    * You should run the pdflatex command at least twice to make sure all cross references generate correctly.
    * Check all the overfull hbox warnings and make sure the lines look good (usually it's just a period hanging off the end, no big deal).
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
		* If you still need blank pages: Extract a blank page (check that page 2 is a blank page, otherwise just find a blank somewhere in the pdf):
			* `pdftk ./Subworldbook1.pdf cat 2 output ./blank-page.pdf`
	* Use pdftk or some other pdf manipulation software to add the diagram pages and other matter to the file. Assemble the final pdf, adding blank pages where necessary to get the pages to flow correctly for printing, and get div/4 number of pages:
        * for example:
            * `pdftk ./blank-page.pdf ./Prospect-interior-diagram_5.5x8.25-rotated.pdf ./Gnat-interior-diagram_5.5x8.25-rotated.pdf ./By-Sound-Alone_paper-book-production-file.pdf output ./By-Sound-Alone_paper-book-production-file+diagrams.pdf`
 		* Ideally The note about signing up for the email list would be the first paper page inside the cover

