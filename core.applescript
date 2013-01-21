--	Morning Star combo page generator

--	Written by			Rob Wells
--	Created on			15/12/2012
--	Last updated		20/01/2013
--	Version:			1.8

--	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.
--	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.

-- Global variables --
global pageDate -- The full date used in the InDesign page’s folio, set in create_pageDate()
global fileDate -- The short date used to name the InDesign files, set in create_fileDate()

global freshPagesFolder -- Where the newly created files are saved
set freshPagesFolder to "Server:Production resources:Master pages:Fresh pages:"

global masterDocument -- The InDesign master document
set masterDocument to "Server:Production resources:Master pages:CS4 Master.indd"


-- Running code --
tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to never interact -- Suppresses dialogs and alerts
genPrompt("") -- Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call
tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to interact with all
tell application "Finder"
	activate
	open freshPagesFolder
end tell


-- Handler definitions

-- genPrompt: Gets for the date and the pages to create, then calls functions to create the files
on genPrompt(desk)
	if desk is "" then -- Allows core.scpt to be used as a generator (useful for testing)
		set desk to (choose from list {"News", "Features", "Sport", "Arts", "Custom edition"} with prompt "Please pick a desk:" with title "Page generator") as string
	end if
	
	set months_list to {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
	set days_list to {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
	
	if desk is "News" or desk is "Sport" or desk is "Custom edition" then -- This if block sets the page options presented to the user
		if desk is "News" then
			set theTitle to "News pages generator" -- Used to add a title to the prompts
			set weekday_pages to {"News — splits", "News — 2-3 as singles", "News — 4-5 as singles", "News — 6-7 as singles", "TV", "Letters"}
			set weekend_pages to {"News — splits", "News — 2-3 as singles", "News — 4-5 as singles", "News — 6-7 as singles", "TV", "Letters", "Struggle", "Single struggle - left", "Single struggle - right", "Red List"}
		else if desk is "Sport" then
			set theTitle to "Sport pages generator"
			set weekday_pages to {"Two pages", "Three pages", "Three pages with split", "Extra left page", "Extra right page", "Extra split"}
			set weekend_pages to {"Four pages", "Four pages with split", "Racing only", "Extra left page", "Extra right page", "Extra split"}
		else if the desk is "Custom edition" then
			set theTitle to "Custom edition"
		end if
	else if desk is "Features" or desk is "Arts" then
		set the end of days_list to "No day — working ahead" -- Adds an extra day option that news and sport don't need
		if desk is "Features" then
			set theTitle to "Features pages generator"
			set weekday_pages to {"Spread", "10", "12-13", "Letters", "Arts", "Arts split"}
			set weekend_pages to {"Spread", "News reviews — split", "News reviews — singles", "15", "16-17", "Letters"}
			set ahead_pages to {"Spread", "10", "12-13", "News reviews — split", "News reviews — singles", "15", "16-17", "Letters", "Arts", "Arts split"}
		else if desk is "Arts" then
			set theTitle to "Arts pages generator"
			set weekday_pages to {"Arts (p11)", "Arts split"}
			set ahead_pages to {"Arts (p11)", "Arts split", "16-17 (weekend)"}
		end if
	end if
	
	-- Get 'tomorrow' values to use as default answers in date prompts
	set tomorrow to (the (current date) + 86400) -- 60s * 60m * 24h
	set tmDay_r to tomorrow's weekday as string -- "Raw tmDay" to add to the tmDay list. String conversion necessary else default ignored
	set tmDay to {tmDay_r} -- "Choose from list" requires a list for its default selection
	set tmDate to tomorrow's day
	set tmMonth_r to tomorrow's month as string
	set tmMonth to {tmMonth_r}
	set tmYear to tomorrow's year
	
	-- Prompt the user to enter the date
	set theDay to (choose from list days_list with prompt "Please pick the edition day:" default items tmDay with title theTitle) as string
	if result is "false" then error number -128 -- So choosing "Cancel" in the dialog ends the script
	if theDay is "No day — working ahead" then
		set pageDate to "A date needs entering"
		set fileDate to "Ahead"
	else
		set theMonth to (choose from list months_list with prompt "Please pick the month:" default items tmMonth with title theTitle) as string
		if result is "false" then error number -128
		set theDate to the text returned of (display dialog "Please type the date:" default answer tmDate with title theTitle) as string
		if result is "false" then error number -128
		set theYear to the text returned of (display dialog "Please type the year:" default answer tmYear with title theTitle) as string
		if result is "false" then error number -128
		my create_pageDate(theDay, theMonth, theDate, theYear, months_list)
		my create_fileDate(theDay, theMonth, theDate, theYear, months_list)
	end if
	
	-- Get the pages to create
	if the desk is "Custom edition" then
		my customEdition() -- The customEdition function itself gets the pages to generate from TextWrangler
	else
		set promptText to ("Which pages do you want to create?" & return & return & "Hold down Command (⌘) to pick more than one.")
		if theDay is "No day — working ahead" then
			set mastersToGenerate to (choose from list ahead_pages with prompt promptText with title theTitle with multiple selections allowed)
			if result is false then error number -128
		else if theDay is not "Saturday" then
			set mastersToGenerate to (choose from list weekday_pages with prompt promptText with title theTitle with multiple selections allowed)
			if result is false then error number -128
		else if theDay is "Saturday" then
			if the desk is "Arts" then
				set mastersToGenerate to {"16-17 (weekend)"} -- The arts desk only has one page on Saturday, so there's no point in prompting the user
			else
				set mastersToGenerate to (choose from list weekend_pages with prompt promptText with title theTitle with multiple selections allowed)
				if result is false then error number -128
			end if
		end if
		
		if desk is "News" then
			my newsGen(mastersToGenerate, theDay) -- theDay is passed to distinguish between, for example, Saturday & weekday TV 
		else if desk is "Features" then
			my featsGen(mastersToGenerate, theDay)
		else if desk is "Sport" then
			my sportsGen(mastersToGenerate) -- No day checks
		else if desk is "Arts" then
			my artsGen(mastersToGenerate) -- No day checks
		end if
	end if
end genPrompt


-- list_position: Returns theItem's position in theList as an integer
on list_position(this_item, this_list)
	repeat with i from 1 to count of this_list
		if item i of this_list is this_item then return i
	end repeat
end list_position


-- create_pageDate: Assembles the date used on the InDesign pages, and deals with some Saturday oddities
on create_pageDate(theDay, theMonth, theDate, theYear, months_list)
	set ThirtyOneDayMonths to {"January", "March", "May", "July", "August", "October"}
	set ThirtyDayMonths to {"April", "June", "September", "November"}
	
	if theDay is not "Saturday" then -- Does the page date for every weekday
		set pageDate to (theDay & " " & theMonth & " " & theDate & " " & theYear)
		
	else if theDay is "Saturday" and theDate is "30" and theMonth is in ThirtyDayMonths then -- Deals with Saturdays at the end of 30-day months
		repeat with i from 1 to count of months_list -- This repeat block here grabs the name of the next month to use in the page date
			if item i of months_list is theMonth then set secondMonth to (item (i + 1) of months_list)
		end repeat
		set pageDate to ("Saturday/Sunday " & theMonth & " 30-" & secondMonth & " 1 " & theYear) -- This will produce something such as "Saturday/Sunday April 30-May 1 2012"
		
	else if theDay is "Saturday" and theDate is "31" and theMonth is in ThirtyOneDayMonths then -- Deals with Saturdays at the end of 31-day months
		repeat with i from 1 to count of months_list
			if item i of months_list is theMonth then set secondMonth to (item (i + 1) of months_list)
		end repeat
		set pageDate to ("Saturday/Sunday " & theMonth & " 31-" & secondMonth & " 1 " & theYear)
		
	else if theDay is "Saturday" and theDate is greater than "27" and theMonth is "February" then -- Deals with Saturdays at the end of February. Blunt but right until 2032
		set pageDate to ("Saturday/Sunday February " & theDate & "-March 1 " & theYear)
		
	else if theDay is "Saturday" and theDate is "31" and theMonth is "December" then -- Deals with Saturdays at the end of December
		set pageDate to ("Saturday/Sunday December 31-January 1 " & theYear & "-" & (theYear + 1))
		
	else if theDay is "Saturday" then -- Does the page date for every normal Saturday. At the end to avoid the special cases
		set pageDate to ("Saturday/Sunday " & theMonth & " " & theDate & "-" & (theDate + 1) & " " & theYear)
		
	end if
end create_pageDate


-- create_fileDate: Assembles the date used in the InDesign file names
on create_fileDate(theDay, theMonth, theDate, theYear, months_list)
	if theDate as integer is less than "10" then -- If the date is 1-9 this adds a leading zero to use in the file name
		set numDate to ("0" & theDate)
	else
		set numDate to theDate
	end if
	
	repeat with i from 1 to count of months_list -- Gets the month number and, if less than 10, adds a leading zero
		if item i of months_list is theMonth then set raw_numMonth to i
	end repeat
	if raw_numMonth is less than 10 then
		set numMonth to ("0" & raw_numMonth)
	else
		set numMonth to raw_numMonth
	end if
	
	set fileDate to (numDate & numMonth & (text 3 through 4 of theYear)) -- Combines the date, month and last two digits of the year
end create_fileDate


-- pageGen: Opens the master file and calls functions to construct the requested page
-- Takes 4 parameters: spread/single, InDesign master page name, file slug and page number
-- The page number is that of the left-hand page for spreads
on pageGen(pageType, theMaster, theSlug, pageNumber)
	tell application "Adobe InDesign CS5.5"
		open masterDocument
		my applyMaster(theMaster, pageType, pageNumber)
		
		if theMaster contains "News-" then -- Hyphen needed to exclude Feat-NewsReviews-*
			my drawEmbargoBox(pageType)
		end if
		
		if theMaster is "Feat-TV" or theMaster is "Feat-RedList" then
			my changeLegalDate(theMaster)
		end if
		
		my cleanSave(pageNumber, theSlug)
		tell the active document to close saving yes
	end tell
end pageGen


-- applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate
on applyMaster(theMaster, pageType, pageNumber)
	tell application "Adobe InDesign CS5.5"
		tell the active document
			if pageType is "single" then
				set applied master of page 1 to master spread theMaster -- Applies a master to the existing single page
				if theMaster does not contain "X-Blank" then -- The X-Blanks have no page number or date frames
					override text frame "Edition date" of master spread theMaster destination page page 1
					set the contents of text frame "Edition date" of page 1 to pageDate -- Sets the date
					try -- Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items
						override (every item of master page items of page 1 whose item layer's name is "Work") destination page page 1
					end try
					if pageNumber is not "" then -- Mostly to skip the front, which doesn't have a page number frame
						override text frame "Page number" of master spread theMaster destination page page 1
						set the contents of text frame "Page number" of page 1 to pageNumber
					end if
				end if
			else if pageType is "spread" then
				make new spread with properties {applied master:master spread theMaster} -- Creates a two-page spread at pages 2 & 3 with the master applied
				if theMaster does not contain "X-Blank" then
					override text frame "L-Edition date" of master spread theMaster destination page page 2
					override text frame "R-Edition date" of master spread theMaster destination page page 3
					set the contents of text frame "L-Edition date" of page 2 to pageDate -- Sets the date on the left-hand page
					set the contents of text frame "R-Edition date" of page 3 to pageDate -- Sets the date on the right-hand page
					try
						override (every item of master page items of page 2 whose item layer's name is "Work") destination page page 2
						override (every item of master page items of page 3 whose item layer's name is "Work") destination page page 3
					end try
					if pageNumber is not "" then
						override text frame "L-Page number" of master spread theMaster destination page page 2
						override text frame "R-Page number" of master spread theMaster destination page page 3
						set the contents of text frame "L-Page number" of page 2 to pageNumber
						set the contents of text frame "R-Page number" of page 3 to ((pageNumber + 1) as string)
					end if
				end if
			end if
		end tell
	end tell
end applyMaster


-- changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List
on changeLegalDate(theMaster)
	tell application "Adobe InDesign CS5.5"
		tell the active document
			if theMaster is "Feat-RedList" then
				override text frame "Legal date" of master spread theMaster destination page page 1
				set the contents of text frame "Legal date" of page 1 to pageDate
			else if theMaster is "Feat-TV" then
				override text frame "Legal date" of master spread theMaster destination page page 2
				set the contents of text frame "Legal date" of page 2 to pageDate
			end if
		end tell
	end tell
end changeLegalDate


-- drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page
on drawEmbargoBox(pageType)
	tell application "Adobe InDesign CS5.5"
		tell the front document
			if pageType is "single" then
				tell page 1
					set eBox to make new text frame with properties {geometric bounds:{14.0, -150.0, 114.0, -50.0}, contents:"Embargoed stories"}
				end tell
				set the applied object style of eBox to object style "News NIB box tint" -- Set separately as it throws an error if you try to do it on creation
				set locked of eBox to true
			else if pageType is "spread" then
				tell page 2
					set eBox to make new text frame with properties {geometric bounds:{14.0, -150.0, 114.0, -50.0}, contents:"Embargoed stories"}
				end tell
				set the applied object style of eBox to object style "News NIB box tint"
				set locked of eBox to true
			end if
		end tell
	end tell
end drawEmbargoBox


-- cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate
on cleanSave(pageNumber, theSlug)
	tell application "Adobe InDesign CS5.5"
		tell the active document
			set locked of layer "Date and page number" to true
			set locked of layer "Furniture" to true
			set active layer to "Work"
			
			if (pageNumber mod 2 is 0) then
				set the zero point to {15.0, 11.0} -- For left-hand singles and spreads
			else if (pageNumber mod 2 is 1) then
				set the zero point to {9.0, 11.0} -- For right-hand singles
			end if
			
			save to freshPagesFolder & theSlug & "_" & fileDate & ".indd"
		end tell
	end tell
end cleanSave


-- customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them
on customEdition()
	
	-- The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.
	-- e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent
	-- InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"
	--
	-- The human-friendly names used in the TextWrangler file	
	set human_list to {"Front", "SatFront", "Home_S", "Home_L", "Home_R", "Foreign_S", "Foreign_L", "Foreign_R", "Struggle_S", "Struggle_L", "Struggle_R", "NewsReviews_S", "NewsReviews_L", "NewsReviews_R", "Spread", "TV", "SatTV", "Letters_S", "Letters_L", "Letters_R", "RedList", "Feat_S", "Feat_L", "Feat_R", "Arts_Ents", "Arts_S", "Arts_L", "Arts_R", "Back", "Sport_S", "Sport_L", "Sport_R", "Racing_L", "Racing_R", "Blank_S", "Blank_L", "Blank_R"}
	-- The InDesign master names
	set masters_list to {"News-Front", "News-SatFront", "News-Home-Split", "News-Home-L", "News-Home-R", "News-Foreign-Split", "News-Foreign-L", "News-Foreign-R", "Feat-Struggle-Split", "Feat-Struggle-L", "Feat-Struggle-R", "Feat-NewsReview-Split", "Feat-NewsReview-L", "Feat-NewsReview-R", "Feat-Spread", "Feat-TV", "Feat-SatTV", "Feat-Letters-Split", "Feat-Letters-L", "Feat-Letters-R", "Feat-RedList", "Feat-Blank-Split", "Feat-Blank-L", "Feat-Blank-R", "Arts-Ents-Split", "Arts-Blank-Split", "Arts-Blank-L", "Arts-Blank-R", "Sprt-Back", "Sprt-Blank-Split", "Sprt-Blank-L", "Sprt-Blank-R", "Sprt-Racing-L", "Sprt-Racing-R", "X-Blank-Split", "X-Blank-L", "X-Blank-R"}
	-- Slugs to use in the file name
	set slugs_list to {"Front", "Front", "Home", "Home", "Home", "Foreign", "Foreign", "Foreign", "Struggle", "Struggle", "Struggle", "NewsReviews", "NewsReview", "NewsReview", "Spread", "TV", "TV", "Letters", "Letters", "Letters", "RedList", "Features", "Feature", "Feature", "Arts-Ents", "Arts", "Arts", "Arts", "Back", "Sport", "Sport", "Sport", "Racing", "Racing", "BLANK", "BLANK", "BLANK"}
	
	-- Single-page masters (used to set pageType)
	set singles_list to {"News-Front", "News-SatFront", "News-Home-L", "News-Home-R", "News-Foreign-L", "News-Foreign-R", "Feat-Struggle-L", "Feat-Struggle-R", "Feat-NewsReview-L", "Feat-NewsReview-R", "Feat-Letters-L", "Feat-Letters-R", "Feat-RedList", "Feat-Blank-L", "Feat-Blank-R", "Arts-Blank-L", "Arts-Blank-R", "Sprt-Back", "Sprt-Blank-L", "Sprt-Blank-R", "Sprt-Racing-L", "Sprt-Racing-R", "X-Blank-L", "X-Blank-R"}
	-- Spread masters (used to set pageType)
	set spreads_list to {"News-Home-Split", "News-Foreign-Split", "Feat-Struggle-Split", "Feat-NewsReview-Split", "Feat-Spread", "Feat-TV", "Feat-SatTV", "Feat-Letters-Split", "Feat-Blank-Split", "Arts-Ents-Split", "Arts-Blank-Split", "Sprt-Blank-Split", "X-Blank-Split"}
	
	tell application "TextWrangler"
		tell text 1 of text window 1
			set hashLine to (find "^#Starts here#$" options {search mode:grep, starting at top:true}) -- Finds the beginning line
			set theStart to ((the startLine of the found object of hashLine) + 1) -- The first instruction is on the line after hashLine
			set theEnd to the endLine -- The last instruction must be on the last line of the file
			
			repeat with x from theStart to theEnd -- Goes through each line from the one after hashLine to the end of the file
				set searchResult to (find "^(.+)\\t(.+)$" searching in line x options {search mode:grep}) -- Finds characters, then a tab, then more characters
				
				set pageNumber to the grep substitution of "\\1" -- The page number (or a spread's left-hand page number)
				set hMaster to the grep substitution of "\\2" -- Human-friendly master name, as contained in human_list
				
				if (found text of searchResult) does not contain "-	-" then -- Lines consisting of "hyphen tab hyphen" are skipped
					set listPos to (my list_position(hMaster, human_list)) -- Gets hMaster's list position, so it can fetch from masters_ and slugs_list
					set theMaster to (item listPos of masters_list) -- Sets theMaster to the InDesign master name
					
					if theMaster is in singles_list then
						set pageType to "single"
					else if theMaster is in spreads_list then
						set pageType to "spread"
					end if
					
					if pageType is "single" then -- Block to set the slug used to name the file
						set theSlug to (pageNumber & "_" & (item listPos of slugs_list))
					else if pageType is "spread" then
						set theSlug to (pageNumber & "-" & (pageNumber + 1) & "_" & (item listPos of slugs_list))
					end if
					
					if theMaster is "News-Front" or theMaster is "News-SatFront" then
						set pageNumber to "" -- So applyMaster doesn't try to set a page number, which would fail
					end if
					
					my pageGen(pageType, theMaster, theSlug, pageNumber) -- Calls pageGen to create the page
					
				end if
			end repeat
			
		end tell
	end tell
end customEdition

-- newsGen: News-page generation routine
on newsGen(mastersToGenerate, theDay)
	if "News — splits" is in mastersToGenerate then
		if theDay is not "Saturday" then -- If block to create the weekday or weekend front page
			pageGen("single", "News-Front", "1_Front", "")
		else if theDay is "Saturday" then
			pageGen("single", "News-SatFront", "1_Front", "")
		end if
		
		if "News — 2-3 as singles" is in mastersToGenerate then -- If block to create 2-3 as singles or a split
			pageGen("single", "News-Home-L", "2_Home", "2")
			pageGen("single", "News-Home-R", "3_Home", "3")
		else
			pageGen("spread", "News-Home-Split", "2-3_Home", "2")
		end if
		
		if "News — 4-5 as singles" is in mastersToGenerate then -- If block to create 4-5 as singles or a split
			pageGen("single", "News-Home-L", "4_Home", "4")
			pageGen("single", "News-Home-R", "5_Home", "5")
		else
			pageGen("spread", "News-Home-Split", "4-5_Home", "4")
		end if
		
		if "News — 6-7 as singles" is in mastersToGenerate then -- If block to create 6-7 as singles or a split
			pageGen("single", "News-Foreign-L", "6_Foreign", "6")
			pageGen("single", "News-Foreign-R", "7_Foreign", "7")
		else
			pageGen("spread", "News-Foreign-Split", "6-7_Foreign", "6")
		end if
	end if
	
	if "TV" is in mastersToGenerate then
		if theDay is not "Saturday" then
			pageGen("spread", "Feat-TV", "12-13_TV", "12")
		else if theDay is "Saturday" then
			pageGen("spread", "Feat-SatTV", "18-19_TV", "18")
		end if
	end if
	
	if "Letters" is in mastersToGenerate then
		set p10_days to {"Monday", "Wednesday"} -- These two lists determine what the page number will be
		set p14_days to {"Tuesday", "Thursday", "Friday", "Saturday"}
		
		if theDay is in p10_days then
			pageGen("single", "Feat-Letters-L", "10_Letters", "10")
		else if theDay is in p14_days then
			pageGen("single", "Feat-Letters-L", "14_Letters", "14")
		end if
	end if
	
	if "Struggle" is in mastersToGenerate then
		pageGen("spread", "Feat-Struggle-Split", "10-11_Struggle", "10")
	end if
	
	if "Single struggle - left" is in mastersToGenerate then
		pageGen("single", "Feat-Struggle-L", "10_Struggle", "10")
	end if
	
	if "Single struggle - right" is in mastersToGenerate then
		pageGen("single", "Feat-Struggle-R", "11_Struggle", "11")
	end if
	
	if "Red List" is in mastersToGenerate then
		pageGen("single", "Feat-RedList", "20_RedList", "20")
	end if
end newsGen


-- featsGen: Features-page generation routine
on featsGen(mastersToGenerate, theDay)
	if "Spread" is in mastersToGenerate then
		if theDay is "Saturday" then
			pageGen("spread", "Feat-Spread", "12-13_Features", "12")
		else
			pageGen("spread", "Feat-Spread", "8-9_Features", "8")
		end if
	end if
	
	if "10" is in mastersToGenerate then
		pageGen("single", "Feat-Blank-L", "10_Features", "10")
	end if
	
	if "12-13" is in mastersToGenerate then
		pageGen("spread", "Feat-TV", "12-13_TV", "12")
	end if
	
	if "News reviews — split" is in mastersToGenerate then
		pageGen("spread", "Feat-NewsReview-Split", "8-9_NewsReview", "8")
	end if
	if "News reviews — singles" is in mastersToGenerate then
		pageGen("single", "Feat-NewsReview-L", "8_NewsReview", "8")
		pageGen("single", "Feat-NewsReview-R", "9_NewsReview", "9")
	end if
	
	if "15" is in mastersToGenerate then
		pageGen("single", "Feat-Blank-R", "15_Features", "15")
	end if
	
	if "16-17" is in mastersToGenerate then -- Create the weekend Ents/Arts page
		pageGen("spread", "Arts-Ents-Split", "16-17_Ents-Arts", "16")
	end if
	
	if "Letters" is in mastersToGenerate then
		set p10_days to {"Monday", "Wednesday"} -- These two lists determine what the page number will be
		set p14_days to {"Tuesday", "Thursday", "Friday", "Saturday", "No day — working ahead"}
		
		if theDay is in p10_days then
			pageGen("single", "Feat-Letters-L", "10_Letters", "10")
		else if theDay is in p14_days then
			pageGen("single", "Feat-Letters-L", "14_Letters", "14")
		end if
	end if
	
	if "Arts" is in mastersToGenerate then -- Create the weekday Arts page (11)
		pageGen("single", "Arts-Blank-R", "11_Arts", "11")
	end if
	
	if "Arts split" is in mastersToGenerate then
		pageGen("spread", "Arts-Blank-Split", "10-11_Arts", "10")
	end if
end featsGen


-- artsGen: Arts-page generation routine
on artsGen(mastersToGenerate)
	if "16-17 (weekend)" is in mastersToGenerate then -- Create the weekend Ents/Arts page
		pageGen("spread", "Arts-Ents-Split", "16-17_Ents-Arts", "16")
	end if
	
	if "Arts (p11)" is in mastersToGenerate then -- Create the weekday Arts page (11)
		pageGen("single", "Arts-Blank-R", "11_Arts", "11")
	end if
	
	if "Arts split" is in mastersToGenerate then -- Creates an Arts split-spread (10-11)
		pageGen("spread", "Arts-Blank-Split", "10-11_Arts", "10")
	end if
end artsGen


-- sportsGen: Sports-page generation routine
on sportsGen(mastersToGenerate)
	if "Two pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16")
		pageGen("single", "Sprt-Blank-R", "15_Sport", "15")
	end if
	
	if "Three pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16")
		pageGen("single", "Sprt-Blank-R", "15_Sport", "15")
		pageGen("single", "Sprt-Blank-L", "14_Sport", "14")
	end if
	
	if "Three pages with split" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16")
		pageGen("spread", "Sprt-Blank-Split", "14-15_Sport", "14")
	end if
	
	if "Four pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "24_Back", "24")
		pageGen("single", "Sprt-Blank-R", "23_Sport", "23")
		pageGen("single", "Sprt-Blank-L", "22_Sport", "22")
		pageGen("single", "Sprt-Racing-R", "21_Racing", "21")
	end if
	
	if "Four pages with split" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "24_Back", "24")
		pageGen("spread", "Sprt-Blank-Split", "22-23_Sport", "22")
		pageGen("single", "Sprt-Racing-R", "21_Racing", "21")
	end if
	
	if "Racing only" is in mastersToGenerate then
		pageGen("single", "Sprt-Racing-R", "21_Racing", "21")
	end if
	
	if "Extra left page" is in mastersToGenerate then
		pageGen("single", "Sprt-Blank-L", "L_XX_Sport", "00")
	end if
	
	if "Extra right page" is in mastersToGenerate then
		pageGen("single", "Sprt-Blank-R", "R_XX_Sport", "00")
	end if
	
	if "Extra split" is in mastersToGenerate then
		pageGen("spread", "Sprt-Blank-Split", "Split_XX-XX_Sport", "00")
	end if
end sportsGen