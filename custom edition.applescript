--	Morning Star custom edition generator

--	Written by			Rob Wells
--	Created on			16/12/2012
--	Last updated		16/12/2012
--	Version:			1.6

-- Global variables that are needed in handlers at some point --
global theDay
global theMonth
global theDate
global theYear
global months_list
global fileSlug -- The short code used at the start of the new file’s name
global fileDate -- The short date used to name the InDesign files
global pageDate -- The full date used in the InDesign page’s folio
global freshPagesFolder -- Where the newly created files are saved
global masterDocument -- The actual InDesign master document
global masterName -- The name of the master page/spread to be applied in InDesign
global mastersToGenerate

-- Unchanging variables --
set freshPagesFolder to "Server:Production resources:Master pages:Fresh pages:"
set masterDocument to "Server:Production resources:Master pages:CS4 Master.indd"

set human_list to {"Front", "Sat_Front", "Home_S", "Home_L", "Home_R", "Foreign_S", "Foreign_L", "Foreign_R", "Struggle", "Struggle_single", "NewsReview_S", "NewsReview_L", "NewsReview_R", "Spread", "Feature_L", "Feature_R", "TV", "Sat_TV", "Letters", "RedList", "Arts", "Sat_Arts", "Back", "Sport_S", "Sport_L", "Sport_R", "Racing", "Blank_L", "Blank_R"}

set masters_list to {"News-Front", "News-Weekend front", "News-Home-Split", "News-Home-LS", "News-Home-RS", "News-Foreign-Split", "News-Foreign-LS", "News-Foreign-RS", "News-Struggle", "News-Struggle single", "Feat-News reviews", "Feat-NewsRev Left", "Feat-NewsRev Right", "Feat-Spread", "Feat-10", "Feat-15", "Feat-12-13", "TV-Weekend", "Feat-Letters", "Feat-Red List", "Arts-11", "Arts-16-17", "Sprt-Back", "Sprt-Split", "Sprt-LS", "Sprt-RS", "Sprt-Racing", "Blnk-LS", "Blnk-RS"}

set slugs_list to {"Front", "Front", "Home", "Home", "Home", "Foreign", "Foreign", "Foreign", "Struggle", "Struggle", "NewsReview", "NewsReview", "NewsReview", "Spread", "Feats", "Feats", "TV", "TV", "Letters", "RedList", "Arts", "Arts-Ents", "Back", "Sport", "Sport", "Sport", "Racing", "Ads", "Ads"}

set days_list to {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
set months_list to {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
set theTitle to "Date selector"

-- Running code --

(*Get the date *)
set theDay to (choose from list days_list with prompt "Please pick the edition day:" with title theTitle) as string
if result is "false" then error number -128
set theMonth to (choose from list months_list with prompt "Please pick the month:" with title theTitle) as string
if result is "false" then error number -128
set theDate to the text returned of (display dialog "Please type the date:" default answer "" with title theTitle) as string
if result is "false" then error number -128
set theYear to the text returned of (display dialog "Please type the year:" default answer "" with title theTitle) as string
if result is "false" then error number -128

my create_pageDate()
my create_fileDate()

tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to never interact
tell application "TextWrangler"
	tell text 1 of text window 1
		set hashLine to (find "^#Starts here#$" options {search mode:grep, starting at top:true})
		set theStart to ((the startLine of the found object of hashLine) + 1)
		set theEnd to the endLine
		
		repeat with x from theStart to theEnd
			set searchResult to (find "^(.+)\\t(.+)\\t(.+)$" searching in line x options {search mode:grep})
			
			set p1 to the grep substitution of "\\1"
			set p2 to the grep substitution of "\\2"
			set p3 to the grep substitution of "\\3"
			
			if (found text of searchResult) is not "-	-	-" then
				set listPos to (my list_position(p2, human_list))
				if p3 is "single" then
					set theSlug to (p1 & "_" & (item listPos of slugs_list))
				else if p3 is "spread" then
					set theSlug to (p1 & "-" & (p1 + 1) & "_" & (item listPos of slugs_list))
				end if
				set theMaster to (item listPos of masters_list)
				
				if p2 contains "front" then
					set p1 to ""
				end if
				
				if (p1 mod 2 is 0) then
					set theSide to "L"
				else if (p1 mod 2 is 1) then
					set theSide to "R"
				end if
				
				my pageGen(p3, theMaster, theSlug, p1, theSide)
				
			end if
		end repeat
		
	end tell
end tell

tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to interact with all
tell application "Finder"
	activate
	open freshPagesFolder
end tell


-- Handler definitions --

(*	Get item's position in a list	 *)
on list_position(this_item, this_list)
	repeat with i from 1 to count of this_list
		if item i of this_list is this_item then return i
	end repeat
end list_position

(*	Create the date used on the InDesign pages, and deal with some Saturday oddities	*)
on create_pageDate()
	set ThirtyOneDayMonths to {"January", "March", "May", "July", "August", "October"}
	set ThirtyDayMonths to {"April", "June", "September", "November"}
	
	if theDay is not "Saturday" then -- Does the page date for every weekday
		set pageDate to (theDay & " " & theMonth & " " & theDate & " " & theYear)
		
	else if theDay is "Saturday" and theDate is "30" and theMonth is in ThirtyDayMonths then -- Deals with Saturdays at the end of 30-day months (uses list above)
		repeat with i from 1 to count of months_list -- This repeat block here grabs the name of the next month to use in the page date
			if item i of months_list is theMonth then set secondMonth to (item (i + 1) of months_list)
		end repeat
		set pageDate to ("Saturday/Sunday " & theMonth & " 30-" & secondMonth & " 1 " & theYear) -- This will produce something such as "Saturday/Sunday April 30-May 1 2012"
		
	else if theDay is "Saturday" and theDate is "31" and theMonth is in ThirtyOneDayMonths then -- Deals with Saturdays at the end of 31-day months (uses list above)
		repeat with i from 1 to count of months_list
			if item i of months_list is theMonth then set secondMonth to (item (i + 1) of months_list)
		end repeat
		set pageDate to ("Saturday/Sunday " & theMonth & " 31-" & secondMonth & " 1 " & theYear)
		
	else if theDay is "Saturday" and theDate is greater than "27" and theMonth is "February" then -- Deals with Saturdays at the end of February. Fun fact: it’s quite blunt but won’t produce the wrong date until 2032.
		set pageDate to ("Saturday/Sunday February " & theDate & "-March 1 " & theYear)
		
	else if theDay is "Saturday" and theDate is "31" and theMonth is "December" then -- Deals with Saturdays at the end of December
		set pageDate to ("Saturday/Sunday December 31-January 1 " & theYear & "-" & (theYear + 1))
		
	else if theDay is "Saturday" then -- Does the page date for every normal Saturday
		set pageDate to ("Saturday/Sunday " & theMonth & " " & theDate & "-" & (theDate + 1) & " " & theYear)
		
	end if
end create_pageDate


(*	Create the short date to name the created InDesign files	*)
on create_fileDate()
	if theDate as integer is less than "10" then -- If the date is 1-10 this adds an initial zero to use in the file name
		set numDate to ("0" & theDate)
	else
		set numDate to theDate
	end if
	
	repeat with i from 1 to count of months_list -- This gets the month number and, if less than 10, adds an initial zero to use in the file name
		if item i of months_list is theMonth then set raw_numMonth to i
	end repeat
	if raw_numMonth is less than 10 then
		set numMonth to ("0" & raw_numMonth)
	else
		set numMonth to raw_numMonth
	end if
	
	set fileDate to (numDate & numMonth & (text 3 through 4 of theYear)) -- This combines the date, month and last two digits of the year to create a file name
end create_fileDate


(*	Main page-generation handler. Requires four parameters: whether it is a spread or single page, the InDesign master page name,
	the slug for the document's filename, a page number (if it needs changing), and whether it is a left or right-hand page (for single pages).	*)
on pageGen(pSpread, master, slug, pNum, sLR)
	tell application "Adobe InDesign CS5.5"
		set masterName to master
		set fileSlug to slug
		open masterDocument
		if pSpread is "spread" then
			my applyMaster_changeDate_spread()
			
			if pNum is not "" then
				my changePageNumber_spread(pNum)
			end if
			
			if (masterName contains "News-") and (masterName does not contain "Struggle") then
				my drawEmbargoBox()
			end if
			
			if masterName is "Feat-12-13" then
				my changeLegalDate()
			end if
			
			my clean_save_L()
			
		else if pSpread is "single" then
			my applyMaster_changeDate_single()
			
			if pNum is not "" then
				my changePageNumber_single(pNum)
			end if
			
			if (masterName contains "News") and (masterName does not contain "Struggle") then
				my drawEmbargoBox()
			end if
			
			if masterName is "Feat-Red List" then
				my changeLegalDate()
			end if
			
			if sLR is "L" then
				my clean_save_L()
			else if sLR is "R" then
				my clean_save_R()
			end if
		end if
		tell the active document to close saving yes
	end tell
end pageGen


(*	Single page: Apply a master, change the date and override everything on the "Work" layer	*)
on applyMaster_changeDate_single()
	tell application "Adobe InDesign CS5.5"
		tell the active document
			set applied master of page 1 to master spread masterName
			override text frame "Edition date" of master spread masterName destination page page 1
			set the contents of text frame "Edition date" of page 1 to pageDate
			try
				override (every item of master page items of page 1 whose item layer's name is "Work") destination page page 1
			end try
		end tell
	end tell
end applyMaster_changeDate_single


(*	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	*)
on applyMaster_changeDate_spread()
	tell application "Adobe InDesign CS5.5"
		tell the active document
			make new spread with properties {applied master:master spread masterName}
			override text frame "L-Edition date" of master spread masterName destination page page 2
			override text frame "R-Edition date" of master spread masterName destination page page 3
			set the contents of text frame "L-Edition date" of page 2 to pageDate
			set the contents of text frame "R-Edition date" of page 3 to pageDate
			try
				override (every item of master page items of page 2 whose item layer's name is "Work") destination page page 2
				if masterName is not "News-Struggle" then -- Stops Struggle items appearing twice
					override (every item of master page items of page 3 whose item layer's name is "Work") destination page page 3
				end if
			end try
		end tell
	end tell
end applyMaster_changeDate_spread


(*	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	*)
on changePageNumber_single(pageNumber)
	tell application "Adobe InDesign CS5.5"
		tell the active document
			override text frame "Page number" of master spread masterName destination page page 1
			set the contents of text frame "Page number" of page 1 to pageNumber
		end tell
	end tell
end changePageNumber_single


(*	Spreads: Change the page number on both pages. The handler call asks for the left-hand page’s number - e.g. changePageNumber_spread("8") for pages 8 and 9	*)
on changePageNumber_spread(leftPageNumber)
	tell application "Adobe InDesign CS5.5"
		tell the active document
			override text frame "L-Page number" of master spread masterName destination page page 2
			override text frame "R-Page number" of master spread masterName destination page page 3
			set the contents of text frame "L-Page number" of page 2 to leftPageNumber
			if leftPageNumber is "XX" then -- To deal with extra sports split
				set the contents of text frame "R-Page number" of page 3 to leftPageNumber
			else
				set the contents of text frame "R-Page number" of page 3 to ((leftPageNumber + 1) as string)
			end if
		end tell
	end tell
end changePageNumber_spread

(*	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	*)
on clean_save_L()
	tell application "Adobe InDesign CS5.5"
		tell the active document
			set locked of layer "Date and page number" to true
			set locked of layer "Furniture" to true
			set active layer to "Work"
			set the zero point to {15.0, 11.0}
			save to freshPagesFolder & fileSlug & "_" & fileDate & ".indd"
		end tell
	end tell
end clean_save_L


(*	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	*)
on clean_save_R()
	tell application "Adobe InDesign CS5.5"
		tell the active document
			set locked of layer "Date and page number" to true
			set locked of layer "Furniture" to true
			set active layer to "Work"
			set the zero point to {9.0, 11.0}
			save to freshPagesFolder & fileSlug & "_" & fileDate & ".indd"
		end tell
	end tell
end clean_save_R


(*	Changes the legal date on p12-13 (weekdays) or the Red List (Saturday).	*)
on changeLegalDate()
	tell application "Adobe InDesign CS5.5"
		tell the active document
			if (count of pages) is 1 then
				override text frame "Legal date" of master spread masterName destination page page 1
				set the contents of text frame "Legal date" of page 1 to pageDate
			else if (count of pages) is 3 then
				override text frame "Legal date" of master spread masterName destination page page 2
				set the contents of text frame "Legal date" of page 2 to pageDate
			end if
		end tell
	end tell
end changeLegalDate


(*	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	*)
on drawEmbargoBox()
	tell application "Adobe InDesign CS5.5"
		tell the front document
			if (count of pages) is 1 then
				tell page 1
					set eBox to make new text frame with properties {geometric bounds:{14.0, -150.0, 114.0, -50.0}, contents:"Embargoed stories"}
				end tell
				set the applied object style of eBox to object style "News NIB box tint" -- This causes an error if you try to set it when the frame is created.
				set locked of eBox to true
			else if (count of pages) is 3 then
				tell page 2
					set eBox to make new text frame with properties {geometric bounds:{14.0, -150.0, 114.0, -50.0}, contents:"Embargoed stories"}
				end tell
				set the applied object style of eBox to object style "News NIB box tint"
				set locked of eBox to true
			end if
		end tell
	end tell
end drawEmbargoBox