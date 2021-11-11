# Note: modified from original source from maintainer
BUILD = built-files
BOOKNAME = Subworldbook1
# This BOOKNAME variable is the output file name, not the title
TITLE = title.txt
METADATA = metadata.xml
# Metadata is a part of the epub standard, even if it repeats stuff in the title file
CHAPTERS = full-draft-manuscript/one_diagrams.md full-draft-manuscript/two_preface.md full-draft-manuscript/1_Chapter.md full-draft-manuscript/2_Chapter.md full-draft-manuscript/3_Chapter.md full-draft-manuscript/4_Chapter.md full-draft-manuscript/5_Chapter.md full-draft-manuscript/6_Chapter.md full-draft-manuscript/7_Chapter.md full-draft-manuscript/8_Chapter.md
# TOC = --toc --toc-depth=2
# uncomment above line if you want a TOC; and uncomment pandoc lines below that includes TOC; comment line that doesn't
# I believe separate chapter files are just separated by a space --- see maintainer version to check
COVER_IMAGE = cover/cover-Prospect-temp.png
# I think the cover pic works better if you use a .png or a .jpg
# But upload a .tif to Amazon's cover pic
LATEX_CLASS = article
# While it seems like it would make sense to use 'book' for LATEX_CLASS,
# book sets up the file for book printing -- putting end-of-book pages on the reverse of the front-of-book pages.
# (There's probably a latex option to change that, but that is the default for book.)
# 'report' puts in annoying chapter numbers that I can't figure out how to get rid of with pandoc.
# This document is fairly simple, so 'article' works well --- though see notes in README.md on compiling.
CSS = epub.css
# This corresponds to the --css switch in the epub pandoc command
# It is critically important because it centers the titles and separators among other things. It vastly improves the epub output.
# It is not included in the original maintainer's version.
# The -css switch doesn't seem to have an impact on html or pdf output.

all: book

book: epub html pdf txt

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub

html: $(BUILD)/html/$(BOOKNAME).html

pdf: $(BUILD)/pdf/$(BOOKNAME).pdf

txt: $(BUILD)/txt/$(BOOKNAME).txt

$(BUILD)/epub/$(BOOKNAME).epub: $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/epub
#	pandoc $(TOC) --from markdown+smart --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^
#	above with TOC
	pandoc --css=$(CSS) --from markdown+smart --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^
	# Note: if you look at the original source from the maintainer for this ebook compiler they have a -S in these lines. That switch is deprecated in modern pandoc. I added the --from markdown+smart instead.

$(BUILD)/html/$(BOOKNAME).html: $(CHAPTERS)
	mkdir -p $(BUILD)/html
#	pandoc $(TOC) --from markdown+smart --to=html5 -o $@ $^
#	above with TOC
	pandoc --from markdown+smart --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/pdf
#	pandoc $(TOC) --from markdown+smart --pdf-engine=xelatex -V documentclass=$(LATEX_CLASS) -o $@ $^
#	above with TOC
#	pandoc --from markdown+smart --pdf-engine=xelatex -V documentclass=$(LATEX_CLASS) -V classoption:twocolumn -V classoption:landscape -V papersize=letter -o $@ $^
#	above with twocolumn and landscape
	pandoc --from markdown+smart --pdf-engine=xelatex -V documentclass=$(LATEX_CLASS) -V papersize=letter -o $@ $^

$(BUILD)/txt/$(BOOKNAME).txt: $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/txt
#	pandoc $(TOC) --from markdown+smart --to=txt -o $@ $^
#	above with TOC
	pandoc --from markdown+smart -o $@ $^


.PHONY: all book clean epub html pdf
