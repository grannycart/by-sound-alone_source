Amazon-production-README.md
Last modified: 2024-02-08 17:42

Amazon dimensions for the book are different from B&N. I made the book 5.25x8 in order to have it fit one of their common sizes. (Better for distribution.)

This of course yields more pages, and also a cover with different dimensions.
    Note: If your page count changes by any significant margin, you need
    to download the template from Amazon and re-adjust the cover layout
    (particularly the spine) to fit the new book dimensions. (A different
    page count yields a fatter or skinnier book, so the horizontal dimension
    changes.)
You also have to export the rotated diagrams with the new page size.

In addition, you have to make edits to the latex file:
* adjust the dimensions in the geometry line.
* review overfull hboxes when compiling again
* Fit the "3 things to do" content onto one page: adjust the newgeometry for that page, set the text to \small, remove HRs




