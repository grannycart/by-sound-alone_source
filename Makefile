# Makefile
# Last modified: 2023-08-10 20:24
#
# This Makefile modified from original maintainer at:
# https://github.com/evangoer/pandoc-ebook-template
# Originally released under an MIT license
#
BUILD = built-files
# This BOOKNAME variable is the output file name, not the title:
BOOKNAME = By-Sound-Alone
# Metadata contains title and other info:
METADATA = metadata.yaml
# List of chapter files, in order, separated by a space.
CHAPTERS = manuscript/two_preface.md manuscript/1_Chapter.md manuscript/2_Chapter.md manuscript/3_Chapter.md manuscript/4_Chapter.md manuscript/5_Chapter.md manuscript/6_Chapter.md manuscript/7_Chapter.md
# Diagrams file. Diagrams are only added to epub and html, so that variable is in the pandoc lines for those sections below. 
# Diagrams are added by hand to pdf for book printing -- see latex notes.
DIAGRAMS = manuscript/one_diagrams.md 
# Contact page file. It goes in different locations depending on format, so it gets its own pandoc variable.
# (For epub, contact info should be included in 
CONTACT = manuscript/contact.md
# Similarly the license file's relation to CONTACT changes depending on format, so it too gets its own pandoc variable:
LICENSE = LICENSE.txt
# Disabling Table Of Contents because I don't think the book needs it:
#TOC = --toc --toc-depth=1
# I think the cover pic works better if you use a .png or a .jpg -- only used in epub
COVER_IMAGE = cover/final-beta-front-cover-layout.png
# While it seems like it would make sense to use 'book' for LATEX_CLASS,
# book sets up the file for book printing -- putting end-of-book pages on the reverse of the front-of-book pages.
# (There's probably a latex option to change that, but that is the default for book.)
# 'report' puts in annoying chapter numbers that I can't figure out how to get rid of with pandoc.
# This document is fairly simple, so 'article' works well --- though see notes in README.md on compiling.
LATEX_CLASS = article
# This corresponds to the --css switch in the pandoc command:
CSS = css/clean-html.css
# This line puts a version date into the compiled pandoc file using the -M metadata switch. The default setup puts in today's date:
DATE = -M date="Final Beta; Version date - `date "+%B %e, %Y"`" 

all: book

book: epub html pdf latex txt md 

clean:
	rm -rfd $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub

html: $(BUILD)/html/$(BOOKNAME).html

pdf: $(BUILD)/pdf/$(BOOKNAME).pdf

latex: $(BUILD)/latex/$(BOOKNAME).tex

txt: $(BUILD)/txt/$(BOOKNAME).txt

md: $(BUILD)/markdown/$(BOOKNAME).md

$(BUILD)/epub/$(BOOKNAME).epub: $(CONTACT) $(METADATA) $(DIAGRAMS) $(CHAPTERS) $(LICENSE)
	mkdir -p $(BUILD)/epub
#	Note: Calibre comes with a tool that can convert epub to mobi (Amazon Kindle's format): ebook-convert
# 	Note: if you look at the original source from the maintainer for this ebook compiler they have a -S in these lines. That switch is deprecated in modern pandoc. I added the --from markdown+smart instead to the pandoc compile lines. ('smart' only does anything for markdown and latex outputs though, and is enabled by default, so this isn't doing anything. See: https://www.uv.es/wikibase/doc/cas/pandoc_manual_2.7.3.wiki?33)
# 	The --css references a simple css file used for formatting the epub. It is critically important because it centers the titles and separators among other things. It vastly improves the epub output. It is not included in the original maintainer's version.
	pandoc $(TOC) --css=css/epub.css $(DATE) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(BOOKNAME).html: $(METADATA) $(DIAGRAMS) $(CHAPTERS) $(CONTACT) $(LICENSE)
	mkdir -p $(BUILD)/html
#	Below: Compiling html with the TOC enabled. The -s (standalone) flag is required to get the TOC to work.
#	The --self-contained tells pandoc to include the css in the html file, rather than just referencing it.
	pandoc -s $(TOC) --css=$(CSS) --self-contained $(DATE) --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(METADATA) $(CHAPTERS) $(CONTACT) $(LICENSE)
	mkdir -p $(BUILD)/pdf
#	Below with some latex options (-V) added.
#	Note 2023-08-03: pdf was not compiling on Manjaro system probably for lack of whatever Arch equivalent of fonts-lmodern apt package
	pandoc $(TOC) -s --from markdown+smart --pdf-engine=xelatex $(DATE) -V documentclass=$(LATEX_CLASS) -V papersize=letter -o $@ $^

$(BUILD)/latex/$(BOOKNAME).tex: $(METADATA) $(CHAPTERS) $(LICENSE) $(CONTACT)
	mkdir -p $(BUILD)/latex
#	I use this target for prepping for paper version of the book 
#	(so, scrbook latex class is used here and page it set to 5.5x8.25)
#	No TOC for book printing file
#	Below with some latex options (-V) added.
	pandoc -s --from markdown+smart --top-level-division=chapter $(DATE) -V documentclass=scrbook -V geometry:paperwidth=5.5in -V geometry:paperheight=8.25in -o $@ $^

$(BUILD)/txt/$(BOOKNAME).txt: $(METADATA) $(CHAPTERS) $(LICENSE)
	mkdir -p $(BUILD)/txt
#	No TOC for txt file
	pandoc -s --from markdown+smart $(DATE) -o $@ $^

$(BUILD)/markdown/$(BOOKNAME).md: $(METADATA) $(CHAPTERS) $(LICENSE)
	mkdir -p $(BUILD)/markdown
#	General Makefile note: $@ = output file name (listed before the : on the target line); $^ = inputs files names (after the : on the target line)
# 	markdown target just turns the chapters into a single, cleaned up md file.
	pandoc -s $(TOC) --from markdown+smart $(DATE) --to=markdown -o $@ $^


.PHONY: all book clean epub html pdf latex txt md
