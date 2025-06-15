
# Manuscript --- By Sound Alone
* By Mark Torrey


## How to read it:
* Available to read on github pages here:
	* [By Sound Alone](https://bysoundalone.net/) (Includes more information about the book)
* Or, compile from this source code using pandoc.
	* (Or just read the straight markdown, available in source.)


## Repo contents:
* **cover/**: The cover graphic files.
* **notes-and-edits/**: Todo lists and other documentation.
* **manuscript/**: Markdown files that are the source for the book text. Broken out into separate files for each chapter.
    * Any edits to the book would be done in these files.
* **sub-diagrams/**: Digrams of protaganist submarines in book.
* **final-formatted-output-files/**: Formatted output files of final version of the book.


## Compilation notes:
* Compiled using pandoc-ebook-template. For instructions see:
	* https://github.com/evangoer/pandoc-ebook-template
	* Also see Makefile for details.
* Basically: 
	1. on a linux box 
	2. make sure you have pandoc and latex installed 
	3. then just run make. This will create an epub, html, pdf, latex, and plain txt version of the book.:
        * Note: You will get lots of warnings that say: `[WARNING] Duplicate link reference` This is just a result of the yaml formatting of comments in the text. You can ignore these warnings.
		* Note: for draft versions I've added -M date="Version date - `date "+%B %e, %Y"`" to the pandoc compile lines in the Makefile so the compiled files have a reference date included in the title blocks. (Requires date command on the computer. -M adds the content to the metadata. This line should be removed from final published version.)
	4. These files can be cleaned up a bit by hand. See notes below.
* epub:
	* formatting notes to come
	* Calibre has a tool to convert epub to mobi. See comments in Makefile.
* html:
	* more or less works as compiled by pandoc, but it's not pretty
* pdf:
	* more or less works as compiled by pandoc
* txt:
	* more or less works as compiled by pandoc
* latex:
	* This is good for getting a raw latex file that can be edited for making a nice paperback version. See `latex-edits-for-paperback.md` file.
* Diagrams:
	* There is a quick layout in an Inkscape .svg file in the sub-diagrams/ directory. Just open that in Inkscape, save it as a pdf, and then do what you like with it.
	* For .epub the diagrams have to go into the file, so there is an extra file in the Makefile pandoc compilation list for the epub target: full-draft-manuscript/one_diagrams.md that includes the diagrams. 
	* Make sure this file exists and the links in it point to the diagrams
	* Make sure the diagram files exist (ideally, the png versions would not be included in the git repo)
	* This file only applies to the .epub compilation.

### Software notes
* In order to compile the book as is without having to fiddle with the Makefile and the markdown, you need certain software installed:
    * git and make (obviously) 
    * pandoc
    * at least a basix latex install if you want to make pdfs 
        * on Arch Linux (what I use, so this is a note to myself): 
            * you need to add the otf-latin-modern package to get the font lmroman10-regular
            * and texlive-fontsrecommended to get lmodern.sty
        * Xetex (on Arch Linux, the texlive-xetex package) --- xelatex engine is used for the pdf generation.
        * (probably some other specific packages, likely to vary depending on distro.)
    * date (virtually all unix machines have this by default)
    * calibre --- for testing your epub, and if you want to create .mobi files. (See comments in Makefile)
    * Inkscape --- if you want to edit the diagrams


## Credits:
* Compiled using pandoc-ebook-template:
	* https://github.com/evangoer/pandoc-ebook-template
* Copy edited by Julia Ringo at [Hagfish](https://hag.fish/)
* Test readers:
	* Clark Smeltzer
	* Kevin Noble
	* Linda Neaman
	* Ray Pelka
	* Kevin Stokes
	* xala
	* Threespeed
    * Becci Torrey

[//]: # (* Cover from covervault: * https://covervault.com/)

## License:
* This book is under a CC license:
	* Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
		* CC BY-NC-SA 4.0
		* See: [Creative Commons license](https://creativecommons.org/licenses/by-nc-sa/4.0/)
* The sub diagrams (and only the sub diagrams) are released into the Public Domain (CC0):
	* See: [Creative Commone public domain license](https://creativecommons.org/publicdomain/zero/1.0/)
* Original Makefile was under an [MIT LICENSE](https://opensource.org/license/mit/)


