index-notes_and_todos-subworld_book1.md
Last modified: 2025-06-16 18:41

# Subworld Book 1 --- Index, general notes, editing notes, and todos
* notes and todos -- moved to shuttlebay
* [file index](#index)
* [Final production todos](#Final production todos)
* [story descriptions](#descriptions)
	* [titles and cover](#titles)
* On writing this book
	* (Moved to shuttlebay)
* [notes-from-consultations-with-Hagfish](notes-from-consultations-with-Hagfish)


## file index for submarine world story 1
--------------------------------------------------------------------------------
:index:
* [README.md](../README.md)
	* general README for github repo
* notes_and_todos-subworld_story1
	* This file. List of notes specific to the _story/writing_ of this book; and things to not forget to do; as well as post-production checklist
	* [completed_first-round_edits](./completed_first-round_edits.md)
		* Edits picked up in first full-round pass through the book.
	* [completed_second-round_edits](./completed_second-round_edits.md)
* [Diagrams notes and todos](./notes-on-sub-diagrams)
	* Notes on sub diagrams and edits to make
* hagfish-APA-review/
	* Contains files for Hagfish's APA review.
	* Generated .docx for them with pandoc: `pandoc -s --from=markdown ./By-Sound-Alone.md --to=docx -o By-Sound-Alone.docx`
		* Opened in Libreoffice, did a select-all and applied Arial as typeface to make it more system agnostic.
		* `By-Sound-Alone_20231001.docx` version I sent to them (so no track changes edits)

## Final production todos
--------------------------------------------------------------------------------
* [-] When finished with third pass: do a par formatting on all md files? Ideally, the md would be very legible for reading.
    * This is unecessary because markdown is one of the built-files outputs and it is formatted for reading.
* [ ] on final publication, move remaining notes and stuff in this dir to shuttlebay.
* [X] Amazon is getting rid of MOBI format, so you can can switch to JUST supplying epubs:
    * https://kdp.amazon.com/en_US/help/topic/GULSQMHU5MNH4EZM
* [X] remove Amazon paper version --- it's better to just have epub for amazon, and force people to B&N for paper version. You don't need more than a single paper version.
* [X] add quote from ChatGPT to back cover
* [X] do _another_ revision to the back cover text, update on cover art
* [ ] for book generation, this page might have useful tips about managing the css configuration:
	* https://shkspr.mobi/blog/2023/04/using-pandoc-to-format-a-dissertation-from-markdown-to-html-pdf-and-epub/
* [ ] Remove date line from Makefile? (and lines that mention it in README)
    * (I guess my idea with this was originally that the 'version date' would only apply to drafts)
* [ ] Further cover revision possibilities:
	* get a drawing done of the Gnat sail in modest seas with spindrift coming off the whitecaps. On the top of the sail is a pigeon.
	* Anyone who sees the cover should immediately see the pigeon and think: why is there a pigeon on a submarine on the cover of that book?
	* scale might be a little challenging
	* Or: A gradient of black from light at the sea surface to black in the deep.
		* This could be the 'director's cut' cover, and try to get the herschel-on-the-gnat cover for the final beta version
		* In the bottom is the silhouette of a submarine -- maybe the prospect, or maybe the broken grackle (add ram?)
		* (unfortunately for accuracy the sub couldn't be more than three sub-lengths deep, but maybe the LOOK of a huge ocean of blackness is more important than accuracy)
		* A tiny silhouette of a pigeon flying above the ocean surface. (maybe the pigeon is much closer to the viewer so can be bigger relative to the tiny submarine)
	* other possibilities:
		* [X] do a 5.5 x 8.25 page layout for pre-release print-on-demand draft
		* [O] At least for the beta near-final but-never-really-finalized version:
			* [-] use the same image, but make the water grey-green blue (maybe eyedropped actual ocean water photo - marine park bridge)
			* [-] maybe put the broken sub on the front on the spine?
			* [X] re-do the title: Under Dark (etc)
			* [X] remove "by" from by Mark Torrey
		* [ ] have Dave do illustration
		* [ ] It would be better, I think, to include illustrations of some of the characters ON the sub, rather than just the sub
			* (just a sub will only appeal to sub people.)
		* [ ] Maybe even anime-ish? To pull in the anime folks who might enjoy this story?
		* [ ] It's important that the cover, the title, and the description really capture what the story is and _feels_ like.
			* The worst thing you can do to an audience is mislead them about what a book might be;
			* And the audience will punish anyone they feel mislead by
		* [X] If you do a preview edition, or even a first edition, you could make your own cover from the WWII Tang drawings
		* [ ] If you come up with a symbol for the Prospect, make sure it is shown on an illustrated cover
		* [ ] could be an image of the Gnat's sail with just Herschel standing at his hatch --- this would certainly peak my interest!
* [X] try adding xelatex engine to tex generation make line (if it works, add texlive-xetex to requirements for software in README, I think?)
    * See note in latex compiling notes
* [X] do a final review of back cover text and what to do if you enjoyed the book text
* [X] create a what to do if you enjoyed the book page to replace the contact page:
    * [X] Change donation page to suggest Deliveristas Unidos
        * Make it explicitly "charityware" (suggest looking it up on wikipedia)
    * [X] add a graf at the end about how the reader should pass on the book (especially if they made it to that paragraph). See notes about this in promotion.
    * [X] add how to get on email list
* [X] Add back cover blurb for print book
* [X] after track changes review, go through Hagfish general feedback email and make sure general comments are considered
    * [X] Also make a copy of the changes-marked file, git rm --cached the changes-marked file (to delete the many iterations now saved of it) and then add the original and the changes-marked version back to the repo
    * [-] Julia strongly suggests that the blocking and description slow down the plot too much. I disagree. The mechanics behind the book are to make the reader feel like they live in this world for a while. The plot is simple, really barely enough to keep the pages turning. It's the experience of _being_ there that I hope keeps the reader engaged.
	* [-] Julia also suggests dropping the fucks. But again, I think this helps the reader feel like they are there -- this is how people _actually_ talk, you can _hear_ them in your head. I think most writers shy away from the way people actually speak becuase they fear (maybe rightly so) that it will make them look like less of a writer, if not offend a big portion of the audience outright. But I want people to hear the characters delivering the lines, and these are working class folks, sailors. At least for me, it would detract from the sense of being there if they only cursed as often as the prolite accomodations of network television would allow.
	* [X] Rmove "Captain" before Percy where not necessary
* [X] pick up Becci suggestions:
    * [-] I did spend some time wondering why the grackle is trying to sink them, though obviously that gets resolved.
    * [X] The ice cream sandwiches could make an appearance 😅 maybe one of the times someone is bringing the crew their post-meal coffee
		* There's a line in chapter 3 where someone is eating an ice cream sandwich. She must have just forgotten.
    * [X] Add Becci to thanks list
* [X] Change possessive ship names so the 's is not italized (Chicago)
* [X] hire hagfish
* [X] For next edit pass (do when you apply Hagfish revisions)
	* [X] do a run through to catch grammar/spelling errors caught by google docs
		* (It seems like if you use the spelling/grammar tool, you get useless things. But the blue squiggly lines on Google Docs does pick up some actual mistakes the Libre office missed (I know I did a spelling run through with Libre Office). Annoying.)
	* [X] search for n't (can't didn't wouln't, etc) outside of dialog (there's at least one in the first chapter)
	* [X] remove fuel oil break in first chapter?
* [X] add how to get on mailing list, how to donate. Somewhere. (maybe very last, inside the back fold)
	* Though remember you suggested donating to open-source software at the head of the license file.
* [X] get ISBN for print book
	* B&N will provide a free ISBN for a print book
	* ebooks don't require an ISBN, and if you get one it has to be different than the print book anyway (every version of a book gets its own ISBN)
* [X] make sure epub passes epubcheck validation
	* AUR on Arch



## story descriptions and title possibilities: 
--------------------------------------------------------------------------------
:descriptions:
* short lines:
    * "Like Serenity, but on a submarine" -- Becci (Note: I've never seen Serenity)
	* "For them, the only way to know the difference between living and dying is the small movement of a needle on a gauge."
	* "Commerce always finds a way."
	* If Kelly's Heroes took the liberty of sticking a hippie into WWII, this book takes the liberty of sticking a bunch of punk rockers into mid-century machines. 
	* Like a mashup of a 1960s submarine movie and a 1970s trucker movie
* more detailed description possibilities: 
	* Set in an alternate-timeline post-WWII Earth, where a combination of cold and hot wars have ground the entire surface of the planet down to a military-bureaucratic morass making free movement nearly impossible, commerce has found a way in the form of a network of semi-clandestine transport submarines that take advantage of the freedom of movement offered by the vast three-dimensional space offered by moving cargo underwater.
* just for a rough sense of scale, the average novel has:
	* 300 words per page
	* 3000 words per chapter
	* 90,000 words for a novel.
* [X] Draw diagrams of the Prospect and Gnat. Include with story.
	* (Possibly by scanning and modifying from US Subs book Tang drawings in Inkscape) 
	* (No copyright problems, those are federal gov't drawings)
	* (People like me eat that ship up --- it lets you visualize where in the boat the people are at any time.)
* [X] Possible book (though not series) title:
:titles:
	* [X] title: By Sound Alone
	* Former working title: Under Dark
	* An Absolute and Blessed Silence
	* The Salted wound
		* (referring to the never-healing damage from the ramming at the beginning)
	* The Mouse's Wheel
	* Oceans of Oil
	* Echoes in the Deep / Echos From the Deep
	* Deep Blue Fever
		* (or something else that ties submarines and trucks together)
	* The turning screw
	* As the screw turns
	* A turn of the wheel
	* As the wheel turns
		* (wheel as in propeller)
	* propellerheads
	* Oceans of Oil
	* Sea Truckers; Undersea Truckers
	* Above the dark below / the dark below
	* It's a long way down
		* reference to the junior brown song: https://www.youtube.com/watch?v=WmNc0lmZkto 
		* "Long Way Down" is a published novel and newbury winner
		* "It's a long way down" is an amazon unlimited novel about an entirely unrelated subject




