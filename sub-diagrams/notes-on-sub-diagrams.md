notes-on-sub-diagrams.md
Last modified: Sun Jul 04, 2021  03:05PM


# notes on sub diagrams

## diagram edits to make:
* diagrams revs (reminders from during initial book writing):
	* [ ] add 'sail' label to diagrams (since it's a technical term you use often in the book)
	* [ ] add 'bridge' label to top of the sail (since it's a technical term you use often in the book)
	* [ ] make sure label diagram for sonar compartment includes navigation and radar as well
	* [ ] add 'sleeping racks' to labels on diagram? (since it's a technical term you use often in the book)
	* [ ] make sure the Gnat has an airlock escape trunk
	* [ ] add a dotted line to Prospect showing where ballast tanks are outside the pressure hull
	* [ ] move the Gnat motor switch lever labels aft of the engine
	* [ ] add pigeon coop to Gnat? (don't forget pigeon hatch)
	* [ ] change cargo 'bays' to cargo holds
* Prospect:
	* [ ] add title for diagram
	* [ ] add some cargo boxes in cargo hold and smuggler's hold
	* [ ] add/adjust scale
	* [ ] add stairs up from forward battery room to cargo bay
	* [ ] change 'cargo bay' label to 'cargo hold'
	* [ ] make a line used for stairs that looks more like a steep ladder
	* [ ] label above engine rooms: piping and equipment run
	* [ ] Add little X mark lines to trim tanks / fuel ballast, like US Subs does
	* [ ] Add main ballast valves? (might be tough if the main ballast isn't shown)
	* [X] Add cargo hatch in deck, catwalk to cargo hatch
	* [X] add stair down from third deck to cargo bay floor
	* [X] add trim tanks/express down tank under cargo deck
	* [X] add smugglers hold (stern room?)
	* [X] add note about main ballast being in saddle tanks on the side of the pressure hull
	* [X] add sonar array in bow
	* [X] make sure there's enough room in the engine rooms for an equipment room (air compressors, tanks other odds and ends)
* Gnat:
	* [ ] add title for diagram
	* [ ] add some cargo boxes in cargo hold and smuggler's hold
	* [ ] add/adjust scale
	* [ ] add mating collar
	* [ ] add pigeon hatch
	* [ ] Remove sonar array and replace with deck and keel hydrophones
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



