
# Sub World Book 1 Manuscript
* By 


## How to read it:
* Available to read on github pages here:
	* [Subworld Pages](http://grannycart.net/subworld-pages/)
* Or, compile from this source code using pandoc.
	* (Or just read the straight markdown, available in source.)

## Repo contents:
* **cover/**: The cover graphic files.
* **documentation/**: Todo lists and other documentation.
* **full-draft-manuscript/**: Current version of book in markdown. broken out into separate files for each chapter.
* **pseudocode-files/**: Early non-prose drafts.
* **sub-diagrams/**: Digrams of protaganist submarines in book.


## Compilation notes:
* Compiled using pandoc-ebook-template. For instructions see:
	* https://github.com/evangoer/pandoc-ebook-template
	* Also see Makefile for details.
* Basically: 
	1. on a linux box 
	2. make sure you have pandoc and latex installed 
	3. then just run make. This will create an epub, html, pdf, latex, and plain txt version of the book.
	4. These files can be cleaned up a bit by hand. See notes below.
* epub:
	* formatting notes to come
* html:
	* more or less works as compiled by pandoc, but it's not pretty
* pdf:
	* more or less works as compiled by pandoc
* latex:
	* pandoc creates just raw latex that has to be put into the context of a latex document. Here are the steps I took:
		1. Add this latex document stuff to the top of the .tex file:
		
		```
		%%% PREAMBLE %%%


		\documentclass[letterpaper,twoside]{report}

		%%% PACKAGES %%%

		\usepackage[pdftex]{graphicx} % Add graphics capabilities
		\usepackage[colorlinks=true,linkcolor=red]{hyperref} % Hyperlink capabilities

		\usepackage[landscape,twocolumn]{geometry} % landscape, twocolumns
		% \usepackage[small,compact]{titlesec} % Don't use the ridiculous latex sized sections

		%%% BODY OF THE DOCUMENT: %%%
		\begin{document}
		```
		
		2. Add this to the end of the document:
		
		```
		\end{document}
		```
		
		3. copy the sub diagrams (.png files) from the appropriate sub-diagrams/ directories into the directory with the .tex file. Change the path for the figures to point to the correct diagram files.
		4. do a find in the .tex file for \section and change it to \section* to get rid of latex's section numbering
		
* txt:
	* more or less works as compiled by pandoc


## Credits:
* Compiled using pandoc-ebook-template:
	* https://github.com/evangoer/pandoc-ebook-template
* Test readers:
	* Your name here!
	* Or your name here!
	* Or your name here!

[//]: # (* Cover from covervault: * https://covervault.com/)

## Documentation:
* [Notes and todos](documentation/notes_and_todos-subworld_story1)


## License:
* This pre-release version of this book is under a CC license:
* Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
	* CC BY-NC-SA 4.0
	* See: [LICENSE](./LICENSE)
* Future versions may be under some other license.


