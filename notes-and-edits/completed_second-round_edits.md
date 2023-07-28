subworld-book1/documentation/second-round_edits.md
Last modified: 2023-07-28 16:46

# Second round edits
Edits to pick up in second full pass through the book

* [General plot](#plot)
* [Specific scene edits](#scene)
* [Feedback from test readers](#feedback)
* [Conceptual and abstract edits](#concept)
* [Pacing elements](#pacing)
* [Post-production edits](#post)
* [Leftover ideas, add for "director's cut"?](#Leftover ideas, add for "director's cut"?)
* [Post "Director's Cut" things to remove](#Post "Director's Cut" things to remove)


## General plot and character edits (throughout book)
:plot:
* on starting and finishing editing of each chapter file:
	* [-] convert latex style emdashes --- to md style -- on all files
		* :%s/---/--/g
		* I don't know if this was a problem before that was changed in pandoc (I feel like somewhere I was seeing --- interpreted as en-dash hyphen. But it looks right now when I did some test compiling that outputs in all formats (at least the ones that really matter: epub pdf and html) read --- as emdash; so I've replaced all -- with ---
	* [X] note for markdown:
		* use single underbars for emphasis. two asterisks for bold (if there is any)
		* DON'T use single asterisks for emphasis. I find that confusing.
	* [X] add invisible spacing elements (generally where the ### break notes are)
	* [X] check for quotes, see that 'saids' are set up as clauses, not sentences
		* [X] do a search for capital-S "Said"
			* %s/\.\"\ Said/\,\"\ said/gc
		* Remember to keep an eye out for adverbs, particularly in the dialog attribution
	* [X] do a find-and-replace for til with till
		* %s/\ til\ /\ till\ /gc
		* (you should do confirm-search for this)
	* [X] after chapter 5: change all referenced from Owen to Gregory, and visa versa
		* search gregory; give each a uniqe marker; find and replace Owen:
			* :%s/\ Owen\ /\ Gregory\ /gc
		* Then change all the unique-marker Gregory's to owen
	* [X] do a re-read through of each chapter -- **compile** and read this in pdf, to check for formatting mistakes
	* [X] after chapter 3: search cigarillo and replace with cheroot
		* I did this on each file already, but keep an eye out for oddball missing ones (misspelled or whatever)	
* [X] remove references to the "con" -- too military
* [X] **don't** change references to 'welding rig' -- arc welding is used under water -- see first round notes where you already fixed this.
* [X] Percy is the only person who refers to the ship as 'she' 
	* everyone else refers to it as 'the boat'
* [X] are the ballast valves operated by switches? or wheels?
	* I'm going to make them **wheels** at chap 2 line 736
	* (wheels/valves so they have fine-grained control over flooding)
* [X] fuel oil -- is what fuel is called
* names:
	* [X] Change Trinity's name
		* Trinity, turns out, is the name of the love-interest in the Matrix
		* So change it, unless on re-watching the matrix somehow it makes sense that this little old lady is also named Trinity.
	* [X] while the name _Gnat_ works, I keep having my doubts about _Prospect_.
		* P felt right when I first started using it, but feels less right as I go along
		* This might be a thing to ask test-reader's feedback on
	* [X] The name Chips doesn't feel like it's working
		* You have a note about possibly using Irene?
		* Should she be more of an Irene character?
			* If Irene... could be more like the Irene character from All in the Family: liberal idealistic, smarter than everyone else -- conflict with Percy becomes more of a thing about what they see as (politically?) right?
		* Sticking with Chips -- just gave the name a paragraph of background when she shows up
	* [X] play up the "Handsome Gregory" (a subtle reference to Gregory Peck) joke some more at some point.
* [X] Fix motivation for chase:
	* (every reader comments on this -- none of them are getting your idea that the one-armed captain is just going through the motions for no reason other than not knowing what else to do)
	* A possibility: The sub with the ram is after them because a global bounty has been declared on illicit cargo subs.
		* The sub with the ram is a privateer, licensed to chase cargo subs, capture and take their cargo
		* It becomes a bit of a story about the wider world: shifting towards globalized markets, away from independent operators
			* It would be nice if this also hinted at the *problems* with globalized markets; beyond the fact of putting independent logistics workers out of business 
		* give the one-armed captain back his arm
		* The sub with the ram is using new powers (that are more global, part of a unifying and standardizing world) to chase them across boundaries (though, obviously, this is hardly a widely-held global standard yet, since the stilt city authorities want no military vessels, and the sub with the ram is happy to open up a slaughter on innocents when they get in the way of their quarry.)
	* Sections where this is addressed:
		* Chap 3; lines 320 to 340 -- Miss Mai describing sitch to Percy
			* see notes for depot in scene edits below
		* Chap 4; lines 743 to 777 (maybe a bit more) -- Shakes relating what happened at the depot after they left
			* See notes for shakes reuniting after depot in scene edits below
* [-] there may be TOO much up and down from the control room. Maybe consider ditching the control room in the sail and put it in the same room as navigation and sonar.
	* Maybe all you need to do is remove the 'up' like: climbed into the control room, rather than: climbed up to the control room
* [-] Consider removing parts where Percy second-guesses herself.
	* Hard to say: on the one hand it contributes the tension by having her doubt the outcome of her decisions
	* On the other hand, you could have Hemi do the questioning (gently) and have Percy be insistent that she's right.
		* Might make for more interesting dialog
		* and Percy is NOT always right, just most of the time.
* [X] have the junior crew call hemi 'boss'
* [X] refer to Bastian, Gregory, and Owen as the 'deck crew'
* [X] There is never a reason to describe the race of a non-white character if you didn't have a reason to describe the race of a white character
	* Sometimes you do need to describe the CULTURAL background of characters (regardless of race)
	* Sometimes the point of the cultural background is that the character has rejected it.
	* Or if there's a default cultural background to the scenes of the book (there always is, it HAS to be -- you can't remove cultural background from your head)
		* Then maybe for certain characters they are all about rejecting that default cultural background (punk rock) 
* [X] make sure any compass bearing degrees references are oriented to the globe, not relative to the boat
	* Also see B's note on using bearings earlier
* [X] make consistent whether numbers are written out or not
	* I think I lean towards JUST using numerals. I don't love written-out numbers in text.
	* except zero --- that needs to be written out.
	* ~~the rule is going to be: 
		* for numbers that are part of the 'language' of the piece (including one through ten, or maybe twenty? --- twenty is where you have to start hyphenating after all) you write them out
		* And numbers that are actual measurements of things (off gauges or whatever) are numerals~~
	* No, instead the rule is 1-10 are spelled out. (This was relatively easily adjusted using grep and vim)
	* And... sometimes I write out numbers like twenty and fifteen because it reads better.
* [X] Consider adding more description of the spaces --- particularly inside the Prospect
	* How is it decorated?
	* What does it _feel_ like?
	* How is the galley laid out?
	* What does the engine room feel like?
	* What does the sonar compartment and control room feel like? (You spend so much time in those spaces)
	* (I think the cargo hold is fairly well covered, it's the main decks that are a little weak)
* [-] watch the pacing, it's a little off in places:
	* [-] it should be a slow build up to a big singular event like the ballast blow
	* [-] And it should be a drawn-out grind in a staring-at-dials scene that goes hauls the tension along relentlessly
	* [-] fill in the time-passing sections with something to pull the pacing along at a slow but steady rate, (see pacing notes)
		* don't just montage over them, it makes it feel like things are moving too fast.
	* See C's comments on pacing
* [X] Percy should have a captain's chair in the control room. Or at least a station she stands at.
	* (I think her standing station gets established later in the story, make sure it makes sense in the earlier parts of the book)
	* maybe refer to it explicitly as the 'captain's station'? (akin to the sonar station and the navigation station)
* [X] Is the PA one ship-wide system? Or does it go to different specific compartments? Or both?
	* decide, edit and then make sure it's reflected in the Prospect notes file


## Specific scene edits
:scene:
* [X] Somewhere make at least one direct reference to the "under dark"
* [X] make sure you make it clear early on that Hemi is the 'Deck Boss'
* [X] make sure there's a scene where Percy understands something is wrong with her boat just by feeling it. (Like the DC captains knowing there's a leak just by the pitch of the roll)
	* This happens right at the beginning with the first ramming.
	* And again when she first notices the boat sinking with the leak in the cargo hold
* [X] When Hemi convinces Chips to work again (around line 1084) he says Percy never apologizes --- make sure this is true throughout the book
	* At the depot, Hemi makes Percy re-hire Chips -- but she does so without apologizing
* [X] dumped Shakes description of depot, might need to go back in:
	* "Mind if we ask where you're headed Captain Shakes?" Asked Percy
	* "Aye, I was about to fuckin' say anyway: there's a mid-sea depot about 100 miles from here. It's just over the line in the waters of a different Authority. Somewhat more permissive folks; bit more friendly to commerce. That's why the Authority on this side of the line are such a bunch of aggressive motherfuckin' assholes though --- they don't want shit running through here to there. If you can get this dumpster of yers to the depot, you can definitely get fuel there, and probably some fuckin' poorly executed and overpriced repairs as well."
	* "Sounds like a fucking Eden." Said Percy. 
* [X] dumped convo between Hemi and Shakes about depot that might need to go back in:
	* After making the jump back to the bigger boat, Shakes and Hemi settled down over the _Prospect's_ navigation charts. "OK, where is this depot Captain Shakes?"
	* Shakes pulled down the magnifier and scanned across the chart. "Wait, where are we now?" Hemi pointed to the obvious small x at the end of a string of grease pencil dashes. "Let's see.." Shakes tapped his black-stained finger against the glass covering the chart leaving faintly smudged fingerprints behind and rotated the magnifier around in slow circles. "Ah, here!" Shakes said pointing to a small island marked on the chart and labeled only "deserted."
	* "That is your major trade center?" Asked Hemi. "A deserted island?"
	* "Well, 'major' might be a bit fuckin' descriptive." Said Shakes. "But look." He took the grease pencil and drew a lightweight but long line across hundreds of miles of ocean. "The Territorial Authority boundary is roughly about here. With total fuckin' assholes on this side we are currently on, and only sort-of fuckin' assholes on the other. So you can see how it makes sense to put a depot on that deserted island just across the line to help facilitate trade in, out, and through Asshole-vania over here.
	* "That is true." Said Hemi, taking a pair of calipers and measuring the distance from their current position to the deserted island.  "I hope you're right about a depot being there. We will not make it any further than that."
	* "It'll fuckin' be there!" 
	* Hemi sniffed. "Smells like the food may be ready. Want to eat?" Said Hemi. 
	* "Shit yeah. My gut is fuckin' gaping."
* [X] Create a new reference to the 'sub with the ram' so you don't have to use that awkward phrasing all the time
	* Maybe somehow they know the name of the sub with the ram, even if they don't know the name of the captain.
	* Or maybe it's like butch cassidy and the sundance kid: where they just assume it's someone based on an assumption (though they later confirmed it by reading in the paper -- maybe someone in the depot or stilt city fills them in.)
* [-] Maybe have the Prospect painted striped black and white disruptive camo (look it up) -- because they are the white whale, they are the prey (zebra)?
* [X] make sure you only explain active sonar once
	* [X] Make sure it's clear that the ping is the sound of 'active' sonar. Describe the sound of the ping
	* I believe the first real explanation of active is line chapt 4 line 642, where Hemi explains it to Cassandra (which is the _right_ place for it.)
		* Not sure if I do it AGAIN later though. 
* [X] long slow chase scene akin to O'Brian books. they run until the batteries run out and they have to surface. on the surface they are saved from being seen by a fog bank (so they are just as, if not more, blind above water as below) 
	* It would be nice to make this the _first_ story because it has all the elements of The Enemy Below. It's archetypal for a submarine story, and at the same time can introduce all styles and characters you want to use.  
	* pretty sure I HAVE this, confirm
* depot:
	* [-] Make Vickers the bartender at the depot pub? Make it the nub pub?
		* I think I never mention him by name. So, I think instead he's just going to be Vicker's ol' concept of the skinny-fat guy.
	* [X] Address: where was Shakes going originally? 
		* See line 334 in Chap 2
		* remember Shakes isn't delivering to the depot now
		* probably best to address this when Shakes has conversation with Percy about making his boat loud
	* [X] Change it so Percy knows about the weapons job at the depot beforehand:
		* [X] This can be how Percy dangles motivation for Shakes to help them -- big reward in the next job; this can help tie Shakes to the next job too
			* See K's note on Shakes motivation to help
		* [X] so you have to remove references to Shakes leading them to depot
		* [X] Have to revise the meeting Trinity scene so it seems intentional
		* [X] The (initial) questions about the legality (that I think are in the Trinity conversation) are moved up to when Percy is explaining the plan to Shakes (chap 2; line 430) 
		* [X] This can help lead the book along in the first part:
			* What is this mysterious job at the depot Percy is going for?
			* It seems somewhat nefarious, is it connected to the sub pursuing them? (It is, though maybe that's never made explicit, or it's tied to the conversation about the morality of running weapons)
			* See C's note on strengthening the delivery for the plot -- Percy knowing about it beforehand Percy essentially being willing to be a gunrunner -- ties the beginning, middle and end of book together
	* [X] see note about about learning the name of the sub with the ram at the depot
	* [X] Edit descriptions of Cassandra: see B and C's notes
	* [X] Find and replace: Trinity as a name
	* [X] At the depot, they need to restock cigarettes and cigarillos
		* Percy switches to cheroots
* When Shakes meets up with them again:
	* [X] put in Gregory delivering cheroots to Percy (this has to be before Percy starts smoking her first cheroot, obviously):
		* He pulled a paper packet from his pocket and tossed it to Percy. "They don't have the cigarillos you like, so I got you a carton of these cheroots."
		* Percy opened the packet. "This tobacco is as black as used motor oil." She sniffed. "Smells like petroleum too. These are going to be rough fuckin' smokes. Oh well. Thanks Gregory." 
	* [X] confirms the identity of the Grackle
	* [X] confirm that he was able to transship is last load? or do we not really care?
	* [X] Make a reference to the head --- a joke about how complex it is to operate.
		* Added, Chap 4; like 840
	* [X] Have someone wash their hands with salt water soap
* storm:
	* [X] Probably would make more sense for Owen to be the one who gets killed during the storm.
		* you don't need him for the adultery motivation any more
		* Chips is clearly more attached to Owen than Gregory.
		* This leaves them without an engineer when Chips leaves, but I'm not sure they make much use of one for the rest of the book.
* stilt city: 
	* [X] when Chips leaves -- have Hemi call her by her real name
	* [X] Fix pilot name:
		* needs a new name, maybe Zag something?
		* less asian,
		* different distinction for dialog
	* [X] Sir Piero smokes big cigars or a pipe
	* [X] have Shakes pull his driving gloves on with his teeth (maybe when he's ramming)
	* [-] Somewhere in here needs to be some kind of surprising reveal about the Grackle's chase
		* Like, maybe they have a conversation over ship-to-ship with the Prospect or something.
		* Could be that you find out what the magnetic mines are actually _for_  
			* terrorists going after innocent lives, so they have to question their own work?
			* or supplying freedom fighters, thus the particular aggression of the grackle?
			* something else? more subtle??
		* dropping this idea since it would just confuse the final Owen motivation
* spotted from above:
	* [-] After leaving stilt city they lose the Grackle. The assumption is floated that the Grackle gave up the chase because they know the Prospect no longer has cargo. (This would cut the chase back out through the narrow passage -- the best part of the book!) 
	* [X] delete either the spotting, or the suspended in the water column and damaged sequence, or both
		* Might be better at this point to move right to the garbage gyre
		* this is in line for being cut after the director's cut
* bicycle race:
	* [X] Keep this? (I'm sort of inclined to, until a professional editor tells me to remove it)
		* cut from post director's cut (see that section)
	* [X] Should it be moved to a different part of the book? (post-storm, pre-stilt city?)
		* no, cut it
* garbage gyre:
	* [-] Add a scene where the outside landscape is detected on sonar:
		* huge sunken wrecked vehicles
		* maybe getting towards the gargbage gyre -- ships that have sunk
		* like the dream I had
		* unfortunately, I think I have to leave this to radar as it already is in the book -- they need to be over the deep in the garbage gyre section for the end result.
	* [X] Might be cool to have people living out among the garbage gyre hulks -- trash pickers on small boats that wander among the hulks
	* [X] Somewhere in here, the Grackle shows up again -- to their disbelief; conversation about why should the grackle still be after them with no cargo? -- and chases them into the Garbage Gyre
		* "It's the same sensation as sticking your hand into a shit-filled toilet bowl."
	* [X] In the final battle, strip out all cursing
		* (To add a quiet intensity)
	* [X] As the Grackle sinks, add Owen final dialog
		* [X] Add comment about change in motivation
* Final bbq scene: 
	* [X] see Shakes' notes below
* [-] Consider having Owen and Percy get into a conflict, Owen wants to make one move with the Prospect and Percy is determined to do something else. Owen turns out to be right. Percy doesn't apologize
	* See C's note on beefing up Owen character to be more significant
	* ...could also be Bastian for a little character development, but I think he remains just a skinny quiet smoking pole.
	* I like that this will play in later when they decide what to do when they find out that Owen slept with the ramming sub's captain's wife.
	* though maybe this human relations element is covered by the fight with Chips
* [X] give chapters headers (but remove numbers, those are not doing anything -- but keep the number on the md file name so the order is easy t follow):
	1. Tablemount
	2. The _Gnat_
	3. Depot
	4. Herschel
	5. A Storm
	6. Stilt City
	7. Garbage Gyre
	8. Down The Hole
	* (Consider making much shorter chapters -- maybe breaks by scene?)
	* (Or, make the current chapters "sections" and then subdivide with unlabeled dividers)
* [o] preface:
	* [X] move to the end, make it an afterword -- or just see comment in preface file about telling people right off they don't have to read it.
	* [X] remove preface to the preface
	* [-] [//]: # (Add a graf about how you are sure you need an editor, but an editor is not a luxury I have --- and honestly, given a lot of books I read these days, it seems like maybe good editors are becoming few and far between. Until it gets an editor, it will remain in beta version. This note could probably go at the end, to replace the too many fucks given line.)
	* [X] consider adding bit referencing mice loving running on wheel research (since that was in the removed bicycle race scene) -- how mechanical moving things might be a deeply mammalian thing
	* [-] [//]: # (Maybe the preface should be less/not about this first part of the 20th Century generation thing and more about motorcycles. You could talk about how motorcycles are on the verge of going almost entirely electric --- and I understand why given the performance metrics, quiet, and most of all simplicity. But what if the pure mechanical pleasure of riding a motorcycle gets lost? I always want to ask riders of electric motorcycles: don't you miss shifting? Don't you miss the oneness with the bike you have when you learn to use a clutch? Mechanical pleasure might be something far more deeply ingrained in mammals than we suspect --- mice who choose to run on the wheel in the woods for instance. The bicycle and the old submarines totally tapped into this magic. This book is an attempt to capture the pure mechanical pleasures like that in novel form, and use it to tell a good story.]
		* [-] [//]: # (Maybe it's worth pointing out that the technology that drove old submarines is essentially the same that drives out newest hybrid cars. It's not the technology itself that is disappointing --- it will be hard to regret a shift away from fossil-fuel burning machines --- but the disassociation from mechanical things, and the rise of intelligent machines that don't require a human operator at the mechanical level.)
	* [X] [//]: # (Or maybe you should use this space to tie it to how exciting staring at dials can be --- maybe even reference China Syndrome. Actually, that seems pretty strong --- use that as an argument for why mechanical-based stories are compelling?)
* [X] postscript / license header:
	* add something about how it's under on open license and will remain so (possibly say something about wanting to give back to open source community but I'm not much of a programmer. and this book was written entirely with open source tools.)
		* Put this at the end of the book, just ahead of the license
		* and if people have ideas that they want to add or change to the book I encourage them to run with it; as long as they follow the stipulations of the no commercial use license. 
		* (pretty sure this note is in promotion file too)
* [X] fix transition to CC license in epub file 
	* [X] this is an old note --- check if it doesn't look right?
	* Maybe all you have to do is make the CC file .md formatted, and make the header a # level header
	* added an html bit that triggers a page break


## Feedback from test readers
:feedback:
* [X] feedback from Shakes
	* Alright, didn't get to it on Monday, sorry, was lazy/tired.  You were right, the second half definitely picked up speed - I really enjoyed the stopover sections at the island depot and the stilt city.  They added a lively vibrancy that acts as a nice counter to the continuous stresses of the pursuit, even though, sure, the pursuit continued in the stilt city.  But those locations definitely felt alive - the stilt city especially - I thought that was really well conceptualized.  Lots of good little details like the kids running alongside the canals as the sub navigated them made the world much broader than just the stifling interior of the sub.  For some reason, the stilt city evoked for me a combination of Venice and the set of the original Popeye movie that was filmed in Malta back in the day - https://en.wikipedia.org/wiki/Popeye_Village#/media/File:Popeye_Village_overview.JPG  The final pursuit/destruction of the 'sub with the ram' was also really good - I liked that Cassandra earned her keep and I'd honestly forgotten about the missing bombs that Hemi had glossed over earlier as just an inventory oversight.  I obviously dug seeing derbying included and having it happen in confined, dangerous spaces brought me back to the stories Skunk told me about the donut races they used to hold at the Merlin factory that were derbying's inspiration.  So, yeah, overall, I thought it was very well done, creative and you should be proud of what you've written.  In all the years I've known you, I never knew writing was one of your things.
	* Ok, now to the questions/constructive criticism - as you mentioned earlier, there is some tightening up that can be done, especially at the beginning when they first encounter the 'sub with the ram'.  For example, you cut a few times to Chips doing repair on the sub and I felt like I kind of didn't need that many - we already knew she was down there, what she was doing and how the work was progressing.  I feel it tightened up well during the second half.  One of my main 'problems' was with the 'sub with the ram' - not as an adversary, sub vs sub is exciting, but what we knew about the sub and why they were so keen on intercepting the crew. I wish there'd been some radio interaction between the two, aside from just the boilerplate warnings received over ship to ship.  I felt that the justification for the chase lacked a little backbone for me, especially when recounting the traits of the captain - the description of him made it feel like he didn't really care about anything - if I recall correctly, it was mentioned that his affect was generally flat and uninterested, which makes me doubt his devotion to a vendetta.  And I kind of wish the sub had a name, something ominous, you know?  
	* With the final scene of the derby/barbecue, it was a bit weird to so abruptly switch gears from constant chase/anxiety to relaxation - especially since it was the first time we'd really seen the crew bonding together in a playful manner.  I thought it would have worked a little better if maybe it opened w/the crew relaxing and having a good time together - just to cement the fact that they do indeed work as a cohesive unit when they're not relying on each other for survival.  One thing I wish there were more of that would kind of establish this is those one sentence insights into the character's personalities - I'm recalling specifically when Sylvia is thinking of Hemi struggling w/something and there's the short little aside that says "She wished she could have seen that" or something similar.  It just gave that quick extra insight to her personality and fleshed her out a little bit more.
	* Alright, I'm kind of losing the thread here - been typing too much ha  I hope what I've provided is helpful and taken in the constructive manner it is intended.  Constructive criticism aside, your books is already many levels above some of the stuff I've randomly picked up and enjoyed on my kindle.  If you have any specific questions, happy to answer them.  I realized after finishing the book that I should have bookmarked some specific things that might have made what I wrote above make a little more sense, but let me know if there's anything I can clarify.  Thanks for letting me be the first to read it.
* [X] feedback from Clara
	* What I liked best:
		* My favorite part of the book was definitely the world-building that you did. You created a real-seeming alternative world that was interesting enough for me to want to learn more about it. I thought that was great and I definitely would have wanted *way* more details about the situation above-ground and the world in general. Presumably it is pretty bad if working on the cargo sub is an attractive option for some people. I think the book needs more details about life on land because the situation there seems to be a motivating force for the action in the book, but it’s not really explained at all. 
		* I think you also have a unique voice and a feel for language and descriptions.
		* I liked that the protagonists were both male and female, although I felt like having Percy rely SO much on Hemi and being so hot-tempered relative to him sort of took away from the potential subversion in gender roles.
	* Suggestions for revision:
		* I can't remember if I mentioned this to you but one of my mom's friends is a pretty successful literary agent and she was telling me that books typically go through around 15 rounds of revisions before they even get sent to a publishing house for consideration, and then after they get bought they go through more. I thought that was interesting and helpful, if a bit daunting. I definitely feel as though *you have something here*, but also that it would benefit from some significant revision. So here are my thoughts - please feel free to take em or leave em!
		* My two biggest issues were with the sense of tension in the book and the pacing. The main source of tension is obviously the ramming sub but because we don't even find out why the sub is pursuing the Prospect until more than halfway through the book, it's really hard to actually feel scared of it or worried about it. I think that the psychological dimension of the conflict should be introduced earlier. I also think the explanation about Owen and his relationship to the captain's wife is really weak. I would say my biggest feedback would be to think of another motivation for the ramming sub, and introduce that motivation earlier. My suggestion would be to rewrite the beginning of the book with a new face-to-face encounter and motivation for the ramming sub. Giving a face and more significant motivation to the antagonist I think would really help the reader empathize with the Prospect's crew and share some of their dread. Owen also was such an insignificant character so it felt especially random and disconnected for him to be the source of the adventure. Have you ever read Treasure Island or Kidnapped by Robert Louis Stevenson? They could be good references since the plots are sort of similar to your book.
		* I also think that it in tandem with this, it would improve the sense of tension for the delivery of the explosives to have a more significant role in the plot, rather than just being an arbitrary somewhat dangerous and well-paid mission. If they were somehow significant to a larger story it would make the reader more invested in whether or not they safely arrived at their destination. Is there a way to tie together the Prospect, the antagonist, and the explosive-delivery more tightly together, and also connect it even more to the wider universe?
		* With the pacing, I felt as though every moment was given equal weight in the narrative. I think compressing time in many places would move the book along faster and also heighten the sense of suspense. The level of detail is already there for the high points of the action. I really liked their stop at the depot, that was definitely one of my favorite parts of the book, but just as an example we didn't really need to know exactly how the explosives were loaded on the ship. There were a lot of examples like that in the book that I think could be trimmed in favor of a tighter narrative.
		* The beginning of the story was my least favorite part by far, I could tell it was supposed to be suspenseful but because we didn't have any motivation for the attack and it was obvious that everyone would survive (because it's the beginning of a book) it was hard to feel invested in the story until they reached the depot. I almost feel as though you could cut that whole part.
	* Character development:
		* I think you did a pretty good job with this. Since there are so few characters, it could have been nice to have Gregory and Owen and Bastian's characters developed a bit more, especially since Gregory dies. Also for there to be more clues as to the relationships between all of them. Regarding Gregory's death - it seemed a bit unrealistic that no one except Chips really seemed to care too much. I would imagine that even people working in super dangerous jobs still feel really disturbed when one of their crew members is randomly killed. As a reader, because we knew almost nothing about Gregory, it was also hard to care and his death felt random. I think you could do more with his character, the circumstances surrounding his death (maybe he's switched shifts with someone or something?) and the aftermath of death to make it feel more impactful. Getting into the characters backstories could be another way to world-build a bit more?
		* Why did Cassandra have to be a prostitute? That seemed a bit gratuitous. I think also her being described as one of the only characters of color made it feel cringey for me, plus details about her hair and stuff whereas we didn't get that for the male crew members.
		* It also felt a bit stereotypical that the pilot has an Asian sounding name and then spoke broken English. 
		* Chips and Percy's disagreements often felt a bit too irrational on both sides, even given everyone’s lack of sleep and the pressure they're under. And then Chips leaving felt quite anti-climactic. Especially in the first half of the book, Percy felt a bit too unbelievably immature to be captain, as the leader of the ship I would want her emotional impulsivity balanced with some other more obvious positive personal characteristics besides an instinct for submarines.
	* Submarines!
		* One of the things you asked me is whether it would be interesting for people not interested in submarines - I think my answer would be - it depends. I definitely felt as though there were parts that were interesting to read about - for example when Hemi is teaching Cassandra how to use the sonar. But there were other parts, in particular in the first part of the book (pre-arriving at the depot) where it felt as though pages were dedicated to the workings of the submarine or the characters trying to fix parts of it, but the story wasn't advancing in a significant way. As a non-submarine-interested reader, I would have preferred for some of the excitement in the book to come from things other than mechanics of the sub and potential issues. I get that it's hard because so much of it takes place in open water, but it seemed as though every time the submarine decided to go up or down, for example, we got information about how it would do that with the ballast etc. In terms of my ideal book, almost all that detail would be cut so that there's enough detail left for the book to keep its sense of realism, but not so much that it bogs down the narrative. I guess in my ideal book the sub would still feature prominently but potential mechanical failures etc wouldn't be one of the main sources of tension, there'd be more varied challenges that come up. Kind of like how in a book that takes place on an above-ground ship, issues with storms and the ship itself would maybe only be part of the narrative but not the main driving thread.
* [X] Feedback from Kevin Stokes:
	* [X] motivation for Shakes isn't strong enough ( --- maybe they can convince him to help out with a giant brick of pot? Maybe Bastian grows pot in his quarters, that's how they have enough to convince Shakes?)
* [X] Feedback from Brian:
	* [X] The start is slow, maybe pick up the writing pace a bit to match the speed of the rest of the book
		* (MT says: I think what happened here is at first I didn't know how much space everything was going to take, so I wrote longer scenes, but later had so many ideas to cram in that there wasn't space for longer scenes)
	* [X] Cassandra says something like "I didn't realize when I agreed to this that it would be so boring" Which was maybe offensive she didn't agree since she was sold like a slave and she was escaping prostitution. 
	* [X] Some of the material handling scenes need work. People don't use a chain with a block. There is a thing called a chain hoist. You might also want to consider gantry cranes. A sub port isn't going to be fooling around.
	* [X] There is a point where Shakes doesn't know the horsepower of the motors on his sub. That seems strange since he built it. But maybe it is intentional. 
	* [X] You start using bearings at some point but there are places earlier where they could be used. 
	* [X] There are a couple places in the first 15 or so pages where it is like "then this happened."  Along the line of show, don't tell, it should be something like "then Chips said to Hemi "there a X in the Y" and Hemi (did something)"
	* [X] There are a couple of parts where the text tells the reader to appreciate something or that something is a mystery.  You could cut those and let the reader do the work
		* I can't quite figure out where these spots are. Hopefully I edited them out in general. I did grep 'mystery' but there wasn't much result.
	* [X] I felt that the air intake and exhaust were not handled when Gnat was coupled to Prospect in Ch 1 or 2.
	* [-] The sub port would be like a cup with air upside down underwater. Damage to the sub docking areas shouldn't cause flooding since the air is there, damage that would allow the air to escape would. But a large door would still be appropriate. 
		* NB: I thought about this during the first draft: the depot would be kept at 1 atmosphere so it could maintain open doors with the surface. That avoids the problem of keeping all those people in the depot at saturation (both in terms of decompression time and complexity for them to enter and exit the depot, but also for health reasons --- people with weaker bodies (Trinity) likely couldn't constantly be compressing and decompressing. (Though, maybe an interesting idea for Trinity to live a huge chunk of her life at compression?) Also the subs are at 1 atmosphere so even if the dock is only 30 feet down that means the dock air would be at 2 atmospheres and you'd have to equalize that with the docking subs. That's not just technically challenging, but the subs would not be designed to be pressurized to 2 atmosphere's from the INSIDE.


## Conceptual and abstracted edits
:concept:
* Consider pulling back or deleting the metaphors
* See note on 'segments' in general notes, considerations. 
	* Consider the implications for shorter chapters, coherent scenes
* See note on subconscious vs conscious story details in notes, considerations
* You need to _see_ the aesthetic of the grime in your head if you want to describe it; the same way you see the mechanical bits.
	* It isn't capturing the grittiness enough, build that up
	* The scene where Percy is looking at her hands and contemplates the grime worn into the creases of her knuckles is a good example of _seeing_ the grime. I need more of that.
* more strongly emphasize the feeling of _prey_. I think it feels like they are prey for the sub with the ram throughout the book, might as well explicitly double down on it.
* make sure the _fear_ is in there, particularly in the build up to big inflection points
* Keep in mind that in this world, like the opening set piece, nature is deliberately cruel and evil, tormenting
	* So at some point, it should be _pulling_ them to the depths
	* akin to the cruelty and evil of power --- the Authorities; but where the Authority cruelty is random, nature's cruelty is deliberate
	* The only way they survive in nature's cruelty is through their grimey, rational machine, the submarine. the submarine which always makes sense, if you can just figure it out
* manliness:
	* One thing I'm trying to do in this book is salvage the lone-male fantasy
		* First by making it not exclusively "male"
		* Second by doing it without guns (1970s trucker movies are a perfect fit for that)
	* See this article: https://www.nytimes.com/2022/07/04/opinion/guns-america-western-mythology.html 
		* For a good outline of what's wrong with the male fantasy, including Cormac McCarthy 
	* One of my test readers criticized the book for being too "male"; 
		* But I believe the individualist male fantasy is validly compelling; it just needs to be adapted to not be racist, sexist, capitalist, and nationalist.
		* Keep the violence though.
	* Also life on the barren frontier (mentioned in article above):
		* Deadliest Catch does this too: the individual out in the frontier landscape, their wits against mother nature
			* (ignoring the gun nuts on the show) 
		* This is *important* work because Deadliest Catch is redeeming the male myth, without recourse to killing brown people with weapons.
		* Redeeming the lone male myth is the BEST way to address the problems with it.
* 'feminine' qualities vs 'masculine' qualities --- women who live on a dirty machine
* [X] try putting in more cursing. Maybe it seems like it's hard to do it genuinely. but on the other hand, maybe all you have to do is _do_ it --- curses every third word.
	* I think TV has programmed you to think you can't use cursing so much. But even TV that doesn't shy away from cursing still has far less cursing than even average real life. (except Deadwood of course)
	* And a lot more cursing might actually be a simple way to make it grittier.
	* Also they're a bunch of fuckin sailors!
	* Maybe the only time they don't curse is when someone is _truly_ angry? (Or is it better to go like Steve on Deadwood at his angriest?)
		* **Like the note you read about 'fuck' during WWII: the only time it wasn't used was when something serious was happing: "Grab your [no-fucking] guns."**
		* I think this is a good revision to make. do it!
	* [X] Maybe Hemi is the one character who doesn't (normally/ever) curse?
		* Chips: curses all the time
		* Shakes: a lot
		* Percy: When she's pissed
		* Hemi: never
* fitzcorraldo: hauling explosive parts over a mountain
* remember to include a lot of spatial description: the reader should be able to SEE the sub/spaces in their head.  
	* build a map in their head for them.  
* there is an underlying idea that the machines of this world are rational and knowable. There is order to them, and the accessibility for most people to be able to understand how they work because they are logical. The world of machines makes sense. It is not wicked.
	* The layer above that is the world of the human mind: infinitely complex and unknowable. No person's motivation can be relied upon to be rational or logical (this is the untruth at the heart of so many novels and the discipline of acting --- writers/storytellers use simplified/simplistic human motivation as a shorthand to drive stories. It's not very real at all. ...On the other hand I think it makes it easier to create compelling characters (Shakes?) and drive them through a plot.) 
* Just make the first submarine novel GO: 
	* Go for character-driven (fear) excitement through staring at dials 
	* This first book should be the pop novel: readable, accessible, character-driven 
	* Go for descriptive renderings of sounds, and on the rare occasions it merits it, sights 
	* accessibility is more important than style: 
		* do NOT fall into the trap of keeping things abstract for the sake of style. those books are often (and often rightfully) unpopular.
		* on the other hand layering style on top of accessibility is the dream: like Batman
* maybe with the engine running full blast, it SOUNDS heavy and grimy, like Dopesmoker.
	* try to think about what a listener to dopesmoker would want to read. 
* think carefully about where you "dive" into description:
	* character's clothing, for example, should just be mentioned in casual passing: "she placed the pencil into the front pocket of her cracking leather overalls."
	* but you might want to go all-in with description when they are staring at dials under pressure.
* remember to focus on _description_ of the grime, darkness, cold, hardness. Make it feel like Deadwood or Blood Meridian, though with good story. Do NOT make it feel like a sci-fi or naval/military story.
* consider NOT having any exterior shots. 
	* it may help the sense of isolation and being in a can if all action takes place _inside_ (the depot, the _Prospect_, the _Gnat_) 
	* having considered this, where I do have exterior shots so far I really like them. I'm not getting rid of them.
	* Though perhaps they end up being the exception that proves the rule.
* Even though it would have been cool to have people communicating on the boat through tubes, that's really a 19th century thing, and I think for where these boats are at, historically, it would just have to be intercoms.




## pacing elements that can be used:
:pacing:
* [-] Add a lot of broken things:
	* Like, have characters on their down time working on repairing all sorts of stuff
	* And for transitional passages, give a list of things repaired
* food:
	* [X] the junior crew members have to rotate through cooking duties, like on deadliest catch
	* [X] clearly one or two of them are far better at it than others
	* [X] like other books I love, it would be nice to work up a detailed description of the food they eat.
* [X] a shift change: someone comes up from below to relieve someone on watch
	* At some point you could try working out the specific crew jobs and rotation schedules as background information to support your stories
	* report outs or lists of broken things, things being repaired, things fixed
* [X] characters have to grab handholds and stand sloped against a sudden angle change in the boat
* [X] they are constantly wiping their hands on greasy rags. The rags hang from hooks all around the ship. they have metal grommets in the rags to keep them from falling off the hooks.
* [X] rolling/lighting/smoking a cigarette/cigar/pipe/flavored tobacco/joint
* [X] popping nodoze pills
* [X] drinking massive amount of coffee
* [X] eating snacks at their stations
* [X] drinking water or liquor from tin cups -- maybe coated in rubber for noise attenuation.
* [-] tossing something at a rat; watching a rat; rat does something interesting (wanders off with a slice of pizza like)
* [-] sharpening a grease pencil with a penknife
* [X] equalizing pressure in their ears


## Post-edit revisions
:post:
* [X] After full draft revisions are complete: scan through with spell check on; and make sure all listed spelling errors are intentional.
	* [X] After test-reader full round of edits: do a full scan through a different spellchecker, like libreoffice
* [X] Should the ----- breaks just be double/triple spaced breaks in the text? I think that's the more conventional way of doing it.
* [X] Do a search for ship names and make sure they are italicized
* [X] Do a search on 'very' and consider removing any
* [X] Do a search on 'really' and consider removing any
* [X] make sure the grill gets mentioned in the early description of the stuff in the cargo hold (where the bicycles that will be removed from the post-director's cut version is.)
* [-] do a search for '-ly' and remove any useless adverbs. Maybe 'that' too.
	* This is basically impossible
* [X] Do a grep for the mispelling "Grackel" 
* [X] Grep "sub with the ram" and make sure it isn't used too much now that we know the boat is named the Grackle
* [X] check --- emdashes are actually correct in all compiled formats. Also check ligatures for quotes. See: https://www.uv.es/wikibase/doc/cas/pandoc_manual_2.7.3.wiki?33
* [X] I keep going back and forth on chapter numbers:
	* On one hand, the book is very linear. Maybe numbers make sense for their subtle "pull" feeling?
	* On the other hand, do they do anything if you have chapter headers? (which I AM convinced I should keep now)
	* keep the chapter numbers.
* [X] need to add at least one more reference to "Handsome Gregory" later in the book.
	* Added it as the last thing Hemi says to Gregory
* [X] somewhere later in the book where the batteries are depleting, add: "Save our batteries, let's spin only one wheel."
* [X] make sure Hemi and Shakes talk about the escape trunk in the gnat when Hemi first goes aboard to scope out the boat
* [X] Don't forget (later in the book particularly): Shakes chewing on coca leaves
* [X] Don't forget (later in the book particularly): Hemi wears small-framed spectacles
* [X] A scene where Hemi is reading The Recognitions (describe cover, not name title.)
	* maybe while on sonar, like:
		* "Hemi sat on sonar watch reading a novel the size of a footstone, with an illustration on the cover of some tortured pious soul."
* [X] Don't forget to re-write preface and post-script about license
	* [X] add something to the preface introducing the "director's cut"?
* [X] Need to consider changing the pilot's name again --- maybe Sir Rogelio after the locksmith who found Yamashita's gold?
	* Went with Sir Piero, after the captain of the andrea doria
* [X] Need to include a description of Percy somewhere early in the book
	* (There's the line about the leather pants she's wearing when she's kneeling on the grates; this might need to be moved up into or reflected in description of her)
	* [X] she runs a hand through her cropped hair
* [X] Shakes affectionately calls the Gnat 'the bug'
* [X] Shakes needs to say 'ain't' more, like he does when he first appears
* [X] fuel ballast -- normal fuel oil tanks are filled with water as they are emptied (since they are outside the pressure hull)
	* fuel ballast tanks (not sure if these are extras, see USS Cod website) can be filled with air to get additional freeboard and run faster on the surface
	* don't forget that in non-teardrop subs, the lower they are the slower they go on the surface.
* [X] In the engine room, or the control room: add something about the shine on the levers and wheels from the grip of hands.
	* Maybe on the control wheels for the dive planes?


## Leftover ideas, add for a later version?
* [-] Add a symbol or logo to the side of the Prospect, something that could be visually rendered in the real world
	* I don't think this will make it into the first book or short story
* [-] hydraulics? wouldn't SOMETHING run on hydraulics? Wouldn't whatever it is break or spring a leak?
* [-] Have Chips helps Shakes cut the pigeon hole for Herschel (while they are on the surface) before she leaves at Stilt City.
	* Chips is gone before Shakes arrives -- nowhere to do this.
	* [X] Check what shakes says about this: pretty sure he mentions the pigeon hatch when he first meets back up with them after the Depot
	* might just be that the pigeon hatch remains an idea for this book.
	* removed the one reference to the pigeon hatch. It's a cute idea, but doesn't really gain anything.
* [-] does the prospect have a record player? maybe they get one later. Maybe cassandra complains about the lack of one at some point, and that becomes your music reference for her.
	* [-] add something about Cassandra listening to music? 
* [-] consider adding a conversation about tools and how a character prefers hand tools whenever they can get them.
* [-] Hemi has stacks of books crammed into his rack (which is larger than most both because he's deck boss, and he's huge. (maybe he became deck boss _primarily_ for the larger rack. He's not one who _wants_ leadership).
* [-] Maybe have Bastian decorating his quarters with plants?
	* Maybe plants should be Gregory, to round outhis character more, and have something to reference him by later in the book
	* Maybe not? Maybe the idea is that nature is out there in the water, not in the sub? since it is a human machine
	* [-] Ask A what plants could actually grow on a sub
	* pot? See note on motivating Shakes
* [-] Add? "The way sound travels underwater is complex, sometimes almost magical."
	* Though there is already a line about how sound finds new and mysterious ways to propagate in the depths
* [-] Add a conversation about the morality of running weapons parts when they have the magnetic mines aboard
	* Maybe with shakes over ship-to-ship, just to keep it interesting
	* Maybe Shakes wonders if it's moral to run weapons
	* But Percy points out that they might be supplying a rebel group fighting for their freedoms
	* Though that rebel group might be the oppressors in 6 months
	* There's no way to keep track of who is in power, or even if there actually CAN be someone in power
	* So instead just do the job at hand, and hope it all comes out as a moral wash in the long run
* [-] mention that the navigation table is lit from underneath? (Is it? or is it just a well-lit station?)
* [-] Contrast the sound and smoke and roughness of the diesels running with the quiet and elegance of the electrics motors on batteries
* [-] And the relationship between the black smoke pouring off the diesels and the cigarillo/cigarette smoke
* [-] Add a scene where they quick-fix a leak with a Power Actuated Tool?
* [-] You might have to reconsider shutters open, "stacks blowing flame" --- diesel subs exhausted below the surface
	* (see notes in research files)
	* Maybe. There's an argument that a cargo sub might trade off a quieter under-water exhaust system for the fact that a diesel plume would be pretty hard to detect at night --- which is when they would do most of their surface-diesel running
		* This is the kind of thing that might be different about a cargo sub --- which presumably has less chance of being forced to the surface to run during the day.
		* yeah, but WHY bother? just because it's cool?
	* This is referenced first right at about 1000k words
* [-] Could the cursing be more along these lines:
	* You're a fucking dried-out turd Percy. Not laying on the ground, but stuck up deep in your colon. One that you struggle to birth out into the world, its dessicated husk catching and grabbing with every thrust against your hemorrhoidal and sore sphincter like it doesn't want to be released into the world, like it wants to stay up inside your sick body and continue to gestate
* [-] Can't hurt for driving plot forward to have two characters with no fear of death. 
	* Bastian might be a good candidate for this, to give him a little more depth
	* though you want them up against characters who are TERRIFIED of death of course if you want to capture that staring-at-dials/The Haunting/Shirley Jackson tension.
* [-] you need characters that aren't too passive. think of mike hammer in mickey spillane's stories.
	* you need a hot-head; not just grumpy resentment (like Chips) but who gets angry quickly and wants to charge into action
		* it would be interesting to make this an element of Percy's character, particularly if Hemi is always-cool
		* Like the aggressive boss/reasonable sub-boss relationship you see so often in industry
		* this could tap into chain-of-command issues, like the Tenerife airport disaster. Something bad happens because someone doesn't want to challenge the captain.
		* this would be way more interesting than just having everyone working to the best of their abilities ala star trek
		* make the captain lovable, but falable. this aspect of tony soprano is worth copying


## Post "Director's Cut" things to remove
* [X] finish a version with everything in -- a directors cut -- after committing that, cut out all the bigger scenes being cut
	* keep track of pages to be cut as you edit
	* [X] change version references from 'director's cut' to 'final beta'
* [X] revise preface again 
	* [-] (see notes about about changing it to more centered on motorcycles, do you want to do this?)
	* [X] remove petcock section, other references to motorcycle (I think it will read cleaner)
	* [X] remove any specific references to the director's cut (title, any content added about it)
* [X] Edit the racist comments of the bartender at the Depot:
	* either eliminate them entirely
	* or maybe figure out a way to make them not explicitly about the ascendency of white people? Maybe white people are simply the preferred class for whores in this world because they are unusual. Most people are some spectrum of brown.
* [X] remove 'twat' references? (already removed cunt)
* [X] remove references to Chip's braid?
* [X] Potential scenes to remove:
	* [X] consider going back and cutting the search pattern sequence before the depot -- might be slowing down the start of the book too much.
		* Is C right? Should I cut the whole thing before the depot and start it there?
		* [X] grep 'circles' and remove references to the early circle search pattern of the grackle after that's removed (there's at least one of these before the depot --- if it didn't get cut with the rest of the search scene
	* [X] the spotted-from above section
		* Chap 6, around line 682
		* this goes with the long chase off the continental shelf to the very-deep limit-pushing dive. This whole section could probably be sliced out with little lost.
		* this section includes the post stilt city damaged floating in the water column section at an angle section
		* This section runs right to the end of the chapter -- could probably cut 10k words or so here.
		* maybe you can just end this section with the Grackle being depth-charged. The idea being that they _could_ be finished (though obviously this is a hope of the characters, not something the reader would believe -- an interesting distinction of things in the macguffin territory of writing theory)
			* Depth-charging happed around chap 6, line 674 
			* would need some editing to make the Prospect think the Grackle might be sunk
	* [X] the bicycle race (you'll have to grep out 'bicycle' and 'bike' references)
		* [X] Bicycles mentioned in first chapter
			* chap 1, line 174
		* [X] There is a reference to the bicycles chained up in the hold at word 4428
		* [X] Another reference: Chap 5, like 322 and 332
		* [X] the bike race is in the beginning of chapter 7. clearly demarcated by notes, it could be easily sliced out
			* [X] though I think this has to go along with combining chapter 7 and 8. (maybe 8 gets a coda instead, and there's only 7 chapters + coda/epilogue)
	* [-] the cookout
		* No, keep this.
* [X] Combine chapters 7 and 8 (since 7 is too short after removing the bike race).
	* [X] Make last chapter name (7) The Garbage Gyre
	* [-] Make Epilogue its own file?



