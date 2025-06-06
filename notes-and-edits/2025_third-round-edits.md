2025_third-round-edits.md
Last modified: 2025-05-04 11:02


# Third round edits
Edits to pick up in third full pass through the book (early, 2025)

* [X] do a find-and-replace on s's and s' for Chips' and Shakes'. Decide which you want to use and stick to it.
    * Looks like Julia suggested s's for shakes's and chips's, ...so I guess I need to do that for every chap:
        * use: :%s/s'\ /s's\ /gc
        * [X] 1_Chapter.md  [X] 2_Chapter.md  [X] 3_Chapter.md  [X] 4_Chapter.md  [X] 5_Chapter.md  [X] 6_Chapter.md  [X] 7_Chapter.md  [-] one_diagrams.md [X]  two_preface.md  [-] what-to-do-if-you-enjoyed-the-book.md
* [X] Should _all_ transmissions over ship-to-ship be in italics?
    * I did this for the depot mini-sub transmitting to the Prospect for the first time. But I think it's a nice effect.
    * Then I should also italicize everything that comes over the PA...
    * tough to check on everything though, it's not as simple as just searching, though for chap 2 I did try to cover it by searching for:
        * /ship-to/ and /PA/ and /radio/
    * And (here's the style call): it has to be *italicize* with astericks because boat names are sometimes in those dialog bits with underscores. Style-wise, the italics will also include the quotes for these radio transmissions
        * [X] 1_Chapter.md  [X] 2_Chapter.md  [X] 3_Chapter.md  [X] 4_Chapter.md  [X] 5_Chapter.md  [X] 6_Chapter.md  [X] 7_Chapter.md  [-] one_diagrams.md [X]  two_preface.md  [-] what-to-do-if-you-enjoyed-the-book.md
* [X] Make it clear in the first chapter that the ramming does most damage to the _ballast_ tank on the rammed side, and only slightly damages the pressure hull
    * [X] It needs some more clarification on this to be very accurate. The book does say the ballast blow pipes are pinched shut, and they can't refill the tanks with air.
    * [X] But it also needs to make clear that the ballast tanks took most of the brunt of the ramming
    * [X] Do they dive _before_ they get to the depot?
        * Seems like they wouldn't take this risk without repairing the pinched blow pipes at least, if not the left side main ballast.
        * So maybe they need to at least do cursory repairs on the pinched line while still at sea/before the Gnat goes under the Prospect?
        * See line 668 (commit: 3519986233e -- I deleted it after that) where Chips is cursing out Percy for risking lowering the boat with the high pressure system depleted --- she SHOULD be pointing out here that the blow pipe is pinched (if they haven't tried to repair it)
        * Though we could say it's only the _emergency_ blow pipes that are pinched... so maybe at least they are willing to dive at the depot?
        * Possibly they need to do repairs BEFORE diving at the depot?
        * They do not dive until the depot, so I just put in an aside about how they took the risk of diving at the depot (chap 3, line 78)
    * [X] It needs to be clear the ballast tanks get repaired at some point (I fear I may also have forgotten to have the pinched pipes repaired)
        * added a graf, line 661 chap 3
    * [X] review lines 648-742 again, after editing out Chips cursing them off
        * Ended up cutting out this whole maneuver; it's mostly focused on the main ballast tanks, and it isn't clear to me how those tanks got refilled (presumably, they were partially filled by the regular control system when they were on the bottom?)
* [X] Pick up corrections from LuukTheSlayer on Reddit:
    * https://www.reddit.com/r/submarine/comments/1aroxoh/comment/ku6l2lb/
    * [X] When you increase your speed by 2 you use 4 times as much power, coming from the formula 1/2*mass*speed^2. 
        * fixed in one spot so far: on line 135 of chap 2
    * [X] You write that the fresh outside air smells great! It doesn't to submariners, they think the fresh air smells at first due too their brain getting used to the submarine smells. 
        * I've read this for subs that are under for months, but is it true for a sub that's under for 24 hours?
        * I changed this on one place early on, when they re-surface from the tablemount the wording non-specifically refers to the the stench of fresh air.
    * [X] A star fix can't be taken in the middle of the night. You can't sea the horizon and thus can't determin the angle. Normally a star fix is taken during the nautical twilight. 
        * This was totally a land-lubber mistake: I assumed the horizon was lit in the sky, like it is where I live, but in the middle of the ocean it is completely black
        * Though what about a moonlit night?
        * There is a mention about the sky clearing on line 460 of chap 4. 
            * Changed this minor reference to "before morning"
        * Around this line, 541 of chap 4: "Overhead the clouds had blown off leaving a clear night sky with no moon. Hemi often remarked that it occurred far more often than seemed statistically probable that the Prospect surfaced and he came out on deck to find a low, blanketing cloud cover. He could hardly recall the last time they surfaced to a clear sky, and his deeply rational self was challenged by the sense that being on the open surface was in fact nature’s opportunity to oppress them. He had begun to prefer being submerged, where instead they had control over the pressure and depth of the atmospheres laying upon them."
            * Fixed this by making the sighting done at just before dawn.
            * Removed references to sextant from Hemi-Chips convo, starting line 41, chap 6
		* There's another reference in the first sentence of chapter 7. maybe do a search for 'sighting' too.
    * [X] Also, 3 on 3 off is the worst scedule i've ever heard. That would break me. Normally 6 on 6 off is used on submarines sometimes 5 on 7 off 7 on 5 off but that's the most cursed off them all lol. Cassandra being on the sonar for 20 hours could happen though. 
        * Possibly, this is explained by the much smaller crew size. Possibly, it should just be fixed.
        * removed reference to exact number of hours, and just called it "rest rotations" at night. --- make sure it works throughout the rest of the book.
    * [-] ~~You write the sub is faster on the surface then underwater. In real life you don't generate a bow wave underwater and are significantly faster under water.~~ 
        * Addressed this in response on Reddit, the WWII style hulls were faster on the surface
    * [X] Fog doesn't do much to radar. 
        * This might be in the category of 1960s-era radar vs today's
        * edited the text so they are aware of their radar risk
    * [X] You say black diesel smoke a lot, thats ok when they start but did you mean they do that continuesly? Because if so those engines need to be tuned lol. 
        * This might be justified by simple stylistic choice to be "like a truck"
    * [X] "As the big diesels spun their turbines" this sencence confuses me you have a tubine on board? do you mean the turbocharger?
        * It was in chapter 7. I just removed 'their turbines'
* [X] Add retcon: lower hatch near the batteries was a mistake
    * Need to keep those hatches to the battery rooms closed at all times
    * from comment on royal road
    * addressed, around line 760
* [ ] From Julia at Hagfish:
    * [X] well, maybe there are a few too many F-bombs.
    * [X] At first it mostly struck me that most characters (minus Hemi) just seemed to speak quite similarly, though of course this does make some sense, given their close quarters and unique culture.
        * [X] I was pleased when Shakes, Miss Mai, and Cassandra came into the story, as Gregory and Bastian aren't very distinct, and Chips and Percy speak alike, if on a sliding scale.
    * [X] Because the novel mostly does not explore the interiority of these characters, it's hard to tell at first how we're meant to interpret Percy - as an asshole with a heart of gold (after all, she's the captain! She must be the hero!) or simply as an asshole? A little more access to her would be fascinating. 
    * [X] I do think the novel is a bit too long, and that you could trim some fat by paring back the description.
    * [X] At times, the stage-setting feels a little too literal, your blocking too extensive - it's almost cinematic in that every movement is clearly described for the visual, but on the page, I just don't think it's necessary.
        * [X] See the descriptions of Shakes eating on page 45, where each movement of his fork is delineated, 
        * [X] or the moment I highlighted on page 57, 
            * "Gregory was climbing down from the sail, sealing the hatch above his head. Bastian and Owen were climbing up the ladder into the control room, and Chips arrived in the navigation and sonar compartment just under the control room with Captain Percy"
            * (possibly I already handled this)
        * [X] or the eating scene on page 84. 
            * "Shakes ripped off a piece of the bread and passed it to his other hand while he blew on the tips of his fingers. He moved the bread back to the first hand, then piled a good amount of white rice and green spinach onto it before leaning in and shoving half the wad into his gaping mouth. He picked up a fork with his free hand and helped guide even more of the pile into his gullet."
        * [X] Or take this brief passage:
            * "When the depth gauge showed the sail was under, Percy raised up the scope. As it came level with her eyes, she leaned into the viewfinder and started slowly scanning a full circle around the Prospect."
            * I would edit this to:
            * "When the depth gauge showed the sail was under, Percy leaned into the scope viewfinder and started slowly scanning a full circle around the Prospect."
        * [X] As a random note: the use of "Captain Percy" instead of "Percy" seemed arbitrary at times. I think she should really just be called Percy after she's first introduced. 
            * (2025-02-23 18:56: Pretty sure I already handled this with a find and replace)
    * [X] The language and the characters' movement can be streamlined, easing the flow of the story and speeding things along.
* [X] From Becci:
    * [X] The biggest thing I'd like to see is some more reaction to Hershel when he first joins the Prospect. I kept wondering why no one was affected by a pigeon flapping around the ship. I think at minimum you could move the bit about him taking up residence in the galley to an earlier part. Though I'd also like a bit more, eg who loves him and develops a relationship vs who is just annoyed.
        * I made a half-assed attempt to address this: chapter 4 line ~943 -- 2023-12-30 13:30
    * [-] I also felt like there could be a little more reaction to the loss of Owen and departure of Chips...  what does Cassandra think about all that?

## production edits still to make
* See "Final production todos" in index_notes-and-todos


