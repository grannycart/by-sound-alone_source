# Note: modified from original source from maintainer
BUILD = built-files
BOOKNAME = Subworldbook1
# This BOOKNAME variable is the output file name, not the title
TITLE = title.txt
METADATA = metadata.xml
# Metadata is a part of the epub standard, even if it repeats stuff in the title file
CHAPTERS = full-draft-manuscript/two_preface.md full-draft-manuscript/1_Chapter.md full-draft-manuscript/2_Chapter.md full-draft-manuscript/3_Chapter.md full-draft-manuscript/4_Chapter.md full-draft-manuscript/5_Chapter.md full-draft-manuscript/6_Chapter.md full-draft-manuscript/7_Chapter.md full-draft-manuscript/8_Chapter.md
# I believe separate chapter files are just separated by a space --- see maintainer version to check
TOC = --toc --toc-depth=1
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

book: epub html pdf latex txt md 

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub

html: $(BUILD)/html/$(BOOKNAME).html

pdf: $(BUILD)/pdf/$(BOOKNAME).pdf

latex: $(BUILD)/latex/$(BOOKNAME).tex

txt: $(BUILD)/txt/$(BOOKNAME).txt

md: $(BUILD)/markdown/$(BOOKNAME).md

$(BUILD)/epub/$(BOOKNAME).epub: $(TITLE) full-draft-manuscript/one_diagrams.md $(CHAPTERS)
	mkdir -p $(BUILD)/epub
# the .epub target includes one_diagrams.md so the diagrams get included in the .epub
#	pandoc $(TOC) --from markdown+smart --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^
#	above with TOC
# Note: if you look at the original source from the maintainer for this ebook compiler they have a -S in these lines. That switch is deprecated in modern pandoc. I added the --from markdown+smart instead to the pandoc compile lines.
	pandoc --css=$(CSS) --from markdown+smart --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(BOOKNAME).html: title.txt $(CHAPTERS)
	mkdir -p $(BUILD)/html
# the .html target needs the title.txt YAML metadata block for title, subtitle, author etc fields.
#	Below: Compiling html with the TOC enabled. The -s (standalone) flag is required to get the TOC to work.
	pandoc -s $(TOC) --from markdown+smart --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(TITLE) $(CHAPTERS)
	mkdir $(BUILD)/pdf
#	pandoc $(TOC) --from markdown+smart --pdf-engine=xelatex -V documentclass=$(LATEX_CLASS) -o $@ $^
#	above with TOC
#	Below with some latex options (-V) added.
	pandoc --from markdown+smart --pdf-engine=xelatex -V documentclass=$(LATEX_CLASS) -V classoption:twocolumn -V classoption:landscape -V papersize=letter -o $@ $^

$(BUILD)/latex/$(BOOKNAME).tex: $(TITLE) $(CHAPTERS)
	mkdir $(BUILD)/latex
#	pandoc -s $(TOC) --from markdown+smart -V documentclass=$(LATEX_CLASS) -V classoption:twocolumn -V classoption:landscape -V papersize=letter -o $@ $^
#	above with TOC, twocolumn, landscape, and letterpaper
#	Below with some latex options (-V) added.
	pandoc -s --from markdown+smart --top-level-division=chapter -V documentclass=scrbook -V geometry:paperwidth=5.5in -V geometry:paperheight=8.25in -o $@ $^

$(BUILD)/txt/$(BOOKNAME).txt: $(TITLE) title.txt $(CHAPTERS)
	mkdir -p $(BUILD)/txt
# the .txt target uses the title.txt YAML metadata block for title, subtitle, author etc fields --- even though it only includes it as YAML without formatting for a txt file.
#	pandoc -s $(TOC) --from markdown+smart --to=txt -o $@ $^
#	above with TOC
	pandoc -s --from markdown+smart -o $@ $^

$(BUILD)/markdown/$(BOOKNAME).md: $(TITLE) title.txt $(CHAPTERS)
	mkdir -p $(BUILD)/markdown
# the .md target uses the title.txt YAML metadata block for title, subtitle, author etc fields --- even though it only includes it as YAML without formatting for a md file.
# markdown target just turns the chapters into a single, cleaned up md file --- good for github pages.
#	pandoc -s --from markdown+smart -o $@ $^
#	above without TOC
	pandoc -s $(TOC) --from markdown+smart --to=markdown -o $@ $^


.PHONY: all book clean epub html pdf latex txt md
