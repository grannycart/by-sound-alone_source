
# Manuscript --- By Sound Alone (Director's Cut)
* By Mark Torrey


## How to read it:
* Available to read on github pages here:
	* [Subworld Pages](http://grannycart.net/by-sound-alone/)
* Or, compile from this source code using pandoc.
	* (Or just read the straight markdown, available in source.)

## Repo contents:
* **cover/**: The cover graphic files.
* **notes-and-edits/**: Todo lists and other documentation.
* **dc-manuscript/**: Current version of book in markdown. broken out into separate files for each chapter.
* **sub-diagrams/**: Digrams of protaganist submarines in book.


## Compilation notes:
* Compiled using pandoc-ebook-template. For instructions see:
	* https://github.com/evangoer/pandoc-ebook-template
	* Also see Makefile for details.
* Basically: 
	1. on a linux box 
	2. make sure you have pandoc and latex installed 
	3. then just run make. This will create an epub, html, pdf, latex, and plain txt version of the book.:
		* Note: for draft versions I've added -M date="Version date - `date "+%B %e, %Y"`" to the pandoc compile lines in the Makefile so the compiled files have a reference date included in the title blocks. (Requires date command on the computer --- all unix boxes. -M adds the content to the metadata. This line should be removed from final published version.)
	4. These files can be cleaned up a bit by hand. See notes below.
* epub:
	* formatting notes to come
* html:
	* more or less works as compiled by pandoc, but it's not pretty
* pdf:
	* more or less works as compiled by pandoc
* txt:
	* more or less works as compiled by pandoc
* latex:
	* This is good for getting a raw latex file that can be edited for making a nice paperback version. See [notes here](latex-edits-for-paperback.md).
* Diagrams:
	* There is a quick layout in an Inkscape .svg file in the sub-diagrams/ directory. Just open that in Inkscape, save it as a pdf, and then do what you like with it.
	* For .epub the diagrams have to go into the file, so there is an extra file in the Makefile pandoc compilation list for the epub target: full-draft-manuscript/one_diagrams.md that includes the diagrams. 
	* Make sure this file exists and the links in it point to the diagrams
	* Make sure the diagram files exist (ideally, the png versions would not be included in the git repo)
	* This file only applies to the .epub compilation.

## Credits:
* Compiled using pandoc-ebook-template:
	* https://github.com/evangoer/pandoc-ebook-template
* Test readers:
	* Clark Smeltzer
	* Kevin Noble
	* Linda Neaman
	* Ray Pelka
	* Kevin Stokes
	* xala
	* Threespeed
	* Your name here!
	* Or your name here!
	* Or your name here!

[//]: # (* Cover from covervault: * https://covervault.com/)

## Documentation:
* [Notes and todos](notes-and-edits/index-notes_and_todos-subworld_book1)
	* See this file for detailed list of notes files


## License:
* This Director's Cut version of this book is under a CC license:
	* Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
		* CC BY-NC-SA 4.0
		* See: [Creative Commons license](https://creativecommons.org/licenses/by-nc-sa/4.0/)
* The sub diagrams (and only the sub diagrams) are released into the Public Domain (CC0):
	* See: [Creative Commone public domain license](https://creativecommons.org/publicdomain/zero/1.0/)
* Original Makefile was under an [MIT LICENSE](https://opensource.org/license/mit/)


