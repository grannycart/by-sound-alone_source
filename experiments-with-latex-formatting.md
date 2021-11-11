subworld-book1/experiments-with-latex-formatting.md
Last modified: Thu Nov 11, 2021  11:04AM

* pandoc creates just raw latex that has to be put into the context of a latex document. Here are the steps I took:

1. Set up a latex target in the Makefile. This is pretty straightforward, but there's a working example in the repo commits somewhere. Then run make to output a .tex file in the built-files/ directory.
2. Add this latex document stuff to the top of the .tex file:

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

3. Add this to the end of the document:

```
\end{document}
```

4. copy the sub diagrams (.png files) from the appropriate sub-diagrams/ directories into the directory with the .tex file. Change the path for the figures to point to the correct diagram files.
5. do a find in the .tex file for \section and change it to \section* to get rid of latex's section numbering
	



