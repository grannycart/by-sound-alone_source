notes-on-sub-diagrams.md
Last modified: Wed Nov 02, 2022  03:26PM


# notes on sub diagrams

## diagram edits to make:
* [ ] adjust sub layouts so engines are balanced around the middle of the boat. maybe cargo bays on both ends?
	* in most subs, the rear ends are heavy with the engines, and they need to use leaded weight in the front --- at least until new equipment is installed
	* this issue can also be addressed through trim and main ballast tanks 
		* the cargo subs could/SHOULD be designed to run empty with flooded forward tanks to counter-balance the engines, and empty those tanks when there's a full cargo load.
	* does this sub have saddle tanks? or single hull? or double hull?
	* see: https://www.scienceabc.com/innovation/how-does-a-submarine-dive-resurface-and-navigate-underwater.html
* [X] adjust sub layouts to get the bridge, control room, and conning tower right
* [X] add top-deck big cargo-loading hatch to big smuggler sub
* diagrams revs (reminders from during initial book writing):
* Prospect:
	* [X] add 'sail' label to diagrams (since it's a technical term you use often in the book)
	* [X] add 'bridge' label to top of the sail (since it's a technical term you use often in the book)
	* [X] make sure label diagram for sonar compartment includes navigation and radar as well
	* [ ] add 'sleeping racks' to labels on diagram? (since it's a technical term you use often in the book)
	* [ ] add a dotted line to Prospect showing where ballast tanks are outside the pressure hull
	* [X] change cargo 'bays' to cargo holds
	* [X] add title for diagram
	* [ ] add some cargo boxes in cargo hold and smuggler's hold
	* [ ] add diesel exhaust pipe at back of sail (with little shutter open)
		* Or does this get changed to exhaust at deck level?
	* [X] add/adjust scale
	* [X] add stairs up from forward battery room to cargo bay
	* [ ] create stairs and ladders to replace sketch lines
		* [ ] make a line used for stairs that looks more like a steep ladder
	* [X] change 'cargo bay' label to 'cargo hold'
	* [ ] label above engine rooms: piping and equipment run
	* [ ] Add little X mark lines to trim tanks / fuel ballast, like US Subs does
	* [ ] add dive plane outline?
	* [ ] Add main ballast valves? (might be tough if the main ballast isn't shown)
	* [ ] make fine adjustments to catwalk: should hang about 2 meters down/ 2/3s of a deck level
	* [X] Add cargo hatch in deck, catwalk to cargo hatch
	* [X] add stair down from third deck to cargo bay floor
	* [X] add trim tanks/express down tank under cargo deck
	* [X] add smugglers hold (stern room?)
	* [X] add note about main ballast being in saddle tanks on the side of the pressure hull
	* [ ] Change sonar array to be top and bottom boxes near bow rather than whole-nose thingy
	* [X] make sure there's enough room in the engine rooms for an equipment room (air compressors, tanks other odds and ends)
	* [ ] Add battery banks
* Gnat:
	* [X] add title for diagram
	* [ ] add some cargo boxes in cargo hold and smuggler's hold
	* [X] add/adjust scale
	* [X] add 'sail' label
	* [ ] add diesel exhaust pipe at back of sail (with little shutter open)
	* [X] add pigeon hatch
	* [ ] add pigeon coop to Gnat?
	* [ ] add dive plane outline?
	* [X] move the Gnat motor switch lever labels aft of the engine
	* [X] make sure top hatch opens upward
	* [X] add mating collar
	* [X] change cargo 'bays' to cargo holds
	* [X] Remove sonar array and replace with deck hydrophone (keep sonar label though)
	* [X] Add escape trunk
		* bottom hatch of escape trunk opens upwards 
		* escape trunk is located behind engines in the book.
	* [X] find a diagram in US Subs to scan that could be a base frame for the Gnat
		* Possibly use the exterior line of the midget sub on pg 223
			* crop out sail extension
			* consider using the exterior drawing: it might be easier to crop, and the exterior texture dots might end up looking cool.
		* and interior bits from pg 221?
	* [X] Don't forget to add viewport location



## How to create the diagrams
1. Scan diagram from source book: US Submarines Since 1945. Save as a png.
2. In Gimp select and delete interior contents of sub, so you are left with just the outline. Save as a png.
	* Mostly I just used free select and delete
	* Depending on what you want to do, you probably want to turn the alpha channel off to get a white background, or on to get a transparent background.
		* Mostly I think you want a white background for creating lines to trace as vectors in Inkscape:
			* Layer -> Transparency -> delete alpha channel
3. Bring scanned line drawing into Inksscape:
	* Import outline png to Inkscape. 
	* Run Path->Trace Bitmap. Use Brightness cutoff set at 0.98 Threshold. 
		* This should give you a nice clean vector outline of the for modifying.
		* Though if the line is TOO heavy, back off the Brightness cutoff threshold
	* The easiest way to smooth lines/delete features that are part of the tracing is to select nodes and delete them.
	* This often leaves nodes with curves, just select those and hit the 'Make selected nodes corner' button.
	* To break out part of a tracing, it is usually easiest to simply duplicate it, and then delete the inverse nodes on both the original and the copy.
	* deleting a line in the polygon:
		* I can't figure out how to actually do this
		* but a good work around is to just lay the nodes on top of each other to give you a no-see-um line
		* (This has the advantage that if you want the line back later, you can just pull the nodes apart)
4. Place decks and details
5. Add labels



