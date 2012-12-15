--	Morning Star combo page generator

--	Written by			Rob Wells
--	Created on			15/12/2012
--	Last updated		15/12/2012
--	Version:			1.5

--	This is the core page generator. It contains all of the code needed by any of the four desks but this script can not and should not be used by itself.
--	Instead a desk name should be entered in the genPrompt() call on line 35, and then saved as desk-specific application with the proper icon.


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

-- Path variables --
set freshPagesFolder to "SSD:Users:robjwells:Desktop:Fresh pages:" -- For testing
set masterDocument to "SSD:Users:robjwells:Desktop:Master.indd" -- For testing
--set freshPagesFolder to "Server:Production resources:Master pages:Fresh pages:" -- Real path
--set masterDocument to "Server:Production resources:Master pages:CS4 Master.indd" -- Real path


-- Running code --
tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to never interact
genPrompt("") -- Desk name (news, sport, features, arts) goes in the quotes in this handler call
tell application "Adobe InDesign CS5.5" to set user interaction level of script preferences to interact with all
tell application "Finder"
	activate
	open freshPagesFolder
end tell


-- Handler definitions --

(* Prompt for date and pages *)
on genPrompt(desk)
	if desk is "news" or desk is "sport" then
		set days_list to {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
		set months_list to {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
		if desk is "news" then
			set theTitle to "News pages generator"
			set weekday_pages to {"News — splits", "News — 2-3 as singles", "News — 4-5 as singles", "News — 6-7 as singles", "TV", "Letters"}
			set weekend_pages to {"News — splits", "News — 2-3 as singles", "News — 4-5 as singles", "News — 6-7 as singles", "TV", "Letters", "Struggle", "Single struggle", "Red List"}
		else if desk is "sport" then
			set theTitle to "Sport pages generator"
			set weekday_pages to {"Two pages", "Three pages", "Three pages with split", "Extra left page", "Extra right page", "Extra split"}
			set weekend_pages to {"Four pages", "Four pages with split", "Racing only", "Extra left page", "Extra right page", "Extra split"}
		end if
	else if desk is "features" or desk is "arts" then
		set days_list to {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "No day — working ahead"}
		set months_list to {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
		if desk is "features" then
			set theTitle to "Features pages generator"
			set weekday_pages to {"Spread", "10", "12-13", "Letters", "Arts", "Arts split"}
			set weekend_pages to {"Spread", "News reviews — split", "News reviews — singles", "15", "16-17", "Letters"}
			set ahead_pages to {"Spread", "10", "12-13", "News reviews — split", "News reviews — singles", "15", "16-17", "Letters", "Arts", "Arts split"}
		else if desk is "arts" then
			set theTitle to "Arts pages generator"
			set weekday_pages to {"Arts (p11)", "Arts split"}
			set ahead_pages to {"Arts (p11)", "Arts split", "16-17 (weekend)"}
		end if
	else if desk is "" then
		display dialog "A desk needs specifying in the genPrompt() handler call in the AppleScript source, on about line 35." buttons {"OK"} default button "OK"
		error number -128
	end if
	
	(*Get the date *)
	set theDay to (choose from list days_list with prompt "Please pick the edition day:" with title theTitle) as string
	if result is "false" then error number -128
	if theDay is not "No day — working ahead" then
		set theMonth to (choose from list months_list with prompt "Please pick the month:" with title theTitle) as string
		if result is "false" then error number -128
		set theDate to the text returned of (display dialog "Please type the date:" default answer "" with title theTitle) as string
		if result is "false" then error number -128
		set theYear to the text returned of (display dialog "Please type the year:" default answer "" with title theTitle) as string
		if result is "false" then error number -128
	end if
	
	(*Get the pages to create*)
	if theDay is "No day — working ahead" then
		set mastersToGenerate to (choose from list ahead_pages with prompt ("Which pages do you want to create?" & return & return & "Hold down Command (⌘) to pick more than one.") with title theTitle with multiple selections allowed)
		if result is false then error number -128
	else if theDay is not "Saturday" then
		set mastersToGenerate to (choose from list weekday_pages with prompt ("Which pages do you want to create?" & return & return & "Hold down Command (⌘) to pick more than one.") with title theTitle with multiple selections allowed)
		if result is false then error number -128
	else if theDay is "Saturday" then
		if the desk is "arts" then
			set mastersToGenerate to {"16-17 (weekend)"}
		else
			set mastersToGenerate to (choose from list weekend_pages with prompt ("Which pages do you want to create?" & return & return & "Hold down Command (⌘) to pick more than one.") with title theTitle with multiple selections allowed)
			if result is false then error number -128
		end if
	end if
	
	if theDay is "No day — working ahead" then
		set pageDate to "A date needs entering"
		set fileDate to "Ahead"
	else
		my create_pageDate()
		my create_fileDate()
	end if
	
	if desk is "news" then
		my newsGen()
	else if desk is "features" then
		my featsGen()
	else if desk is "sport" then
		my sportsGen()
	else if desk is "arts" then
		my artsGen()
	end if
end genPrompt


(* News-page generation routine *)
on newsGen()
	if "News — splits" is in mastersToGenerate then
		if theDay is not "Saturday" then -- If block to create the weekday or weekend front page
			pageGen("single", "News-Front", "1_Front", "", "R")
		else if theDay is "Saturday" then
			pageGen("single", "News-Weekend front", "1_Front", "", "R")
		end if
		
		if "News — 2-3 as singles" is in mastersToGenerate then -- If block to create 2-3 as singles or a split
			pageGen("single", "News-Home-LS", "2_Home", "2", "L")
			pageGen("single", "News-Home-RS", "3_Home", "3", "R")
		else
			pageGen("spread", "News-Home-Split", "2-3_Home", "2", "")
		end if
		
		if "News — 4-5 as singles" is in mastersToGenerate then -- If block to create 4-5 as singles or a split
			pageGen("single", "News-Home-LS", "4_Home", "4", "L")
			pageGen("single", "News-Home-RS", "5_Home", "5", "R")
		else
			pageGen("spread", "News-Home-Split", "4-5_Home", "4", "")
		end if
		
		if "News — 6-7 as singles" is in mastersToGenerate then -- If block to create 6-7 as singles or a split
			pageGen("single", "News-Foreign-LS", "6_Foreign", "6", "L")
			pageGen("single", "News-Foreign-RS", "7_Foreign", "7", "R")
		else
			pageGen("spread", "News-Foreign-Split", "6-7_Foreign", "6", "")
		end if
	end if
	
	if "TV" is in mastersToGenerate then
		if theDay is not "Saturday" then
			pageGen("spread", "Feat-12-13", "12-13_TV", "", "")
		else if theDay is "Saturday" then
			pageGen("spread", "TV-Weekend", "18-19_TV", "", "")
		end if
	end if
	
	if "Letters" is in mastersToGenerate then
		set p10_days to {"Monday", "Wednesday"} -- These two lists determine what the page number will be
		set p14_days to {"Tuesday", "Thursday", "Friday", "Saturday"}
		
		if theDay is in p10_days then
			pageGen("single", "Feat-Letters", "10_Letters", "10", "L")
		else if theDay is in p14_days then
			pageGen("single", "Feat-Letters", "14_Letters", "14", "L")
		end if
	end if
	
	if "Struggle" is in mastersToGenerate then
		pageGen("spread", "News-Struggle", "10-11_Struggle", "", "")
	end if
	
	if "Single struggle" is in mastersToGenerate then
		pageGen("single", "News-Struggle single", "11_Struggle", "", "R")
	end if
	
	if "Red List" is in mastersToGenerate then
		pageGen("single", "Feat-Red List", "20_RedList", "", "L")
	end if
end newsGen


(* Features-page generation routine *)
on featsGen()
	if "Spread" is in mastersToGenerate then
		if theDay is "Saturday" then
			pageGen("spread", "Feat-Spread", "12-13_Features", "12", "")
		else
			pageGen("spread", "Feat-Spread", "8-9_Features", "8", "")
		end if
	end if
	
	if "10" is in mastersToGenerate then
		pageGen("single", "Feat-10", "10_Features", "", "L")
	end if
	
	if "12-13" is in mastersToGenerate then
		pageGen("spread", "Feat-12-13", "12-13_TV", "", "")
	end if
	
	if "News reviews — split" is in mastersToGenerate then
		pageGen("spread", "Feat-News reviews", "8-9_NewsReview", "", "")
	end if
	if "News reviews — singles" is in mastersToGenerate then
		pageGen("single", "Feat-NewsRev Left", "8_NewsReview", "", "L")
		pageGen("single", "Feat-NewsRev Right", "9_NewsReview", "", "R")
	end if
	
	if "15" is in mastersToGenerate then
		pageGen("single", "Feat-15", "15_Features", "", "R")
	end if
	
	if "16-17" is in mastersToGenerate then -- Create the weekend Ents/Arts page
		pageGen("spread", "Arts-16-17", "16-17_Ents-Arts", "", "")
	end if
	
	if "Letters" is in mastersToGenerate then
		set p10_days to {"Monday", "Wednesday"} -- These two lists determine what the page number will be
		set p14_days to {"Tuesday", "Thursday", "Friday", "Saturday", "No day — working ahead"}
		
		if theDay is in p10_days then
			pageGen("single", "Feat-Letters", "10_Letters", "10", "L")
		else if theDay is in p14_days then
			pageGen("single", "Feat-Letters", "14_Letters", "14", "L")
		end if
	end if
	
	if "Arts" is in mastersToGenerate then -- Create the weekday Arts page (11)
		pageGen("single", "Arts-11", "11_Arts", "", "R")
	end if
	
	if "Arts split" is in mastersToGenerate then
		pageGen("spread", "Arts-Split", "10-11_Arts", "", "L")
	end if
end featsGen


(* Arts-page generation routine *)
on artsGen()
	if "16-17 (weekend)" is in mastersToGenerate then -- Create the weekend Ents/Arts page
		pageGen("spread", "Arts-16-17", "16-17_Ents-Arts", "", "")
	end if
	
	if "Arts (p11)" is in mastersToGenerate then -- Create the weekday Arts page (11)
		pageGen("single", "Arts-11", "11_Arts", "", "R")
	end if
	
	if "Arts split" is in mastersToGenerate then -- Creates an Arts split-spread (10-11)
		pageGen("spread", "Arts-Split", "10-11_Arts", "", "")
	end if
end artsGen


(* Sports-page generation routine *)
on sportsGen()
	if "Two pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16", "L")
		pageGen("single", "Sprt-RS", "15_Sport", "15", "R")
	end if
	
	if "Three pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16", "L")
		pageGen("single", "Sprt-RS", "15_Sport", "15", "R")
		pageGen("single", "Sprt-LS", "14_Sport", "14", "L")
	end if
	
	if "Three pages with split" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "16_Back", "16", "L")
		pageGen("spread", "Sprt-Split", "14-15_Sport", "14", "")
	end if
	
	if "Four pages" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "24_Back", "24", "L")
		pageGen("single", "Sprt-RS", "23_Sport", "23", "R")
		pageGen("single", "Sprt-LS", "22_Sport", "22", "L")
		pageGen("single", "Sprt-Racing", "21_Racing", "21", "R")
	end if
	
	if "Four pages with split" is in mastersToGenerate then
		pageGen("single", "Sprt-Back", "24_Back", "24", "L")
		pageGen("spread", "Sprt-Split", "22-23_Sport", "22", "")
		pageGen("single", "Sprt-Racing", "21_Racing", "21", "R")
	end if
	
	if "Racing only" is in mastersToGenerate then
		pageGen("single", "Sprt-Racing", "21_Racing", "21", "R")
	end if
	
	if "Extra left page" is in mastersToGenerate then
		pageGen("single", "Sprt-LS", "L_XX_Sport", "XX", "L")
	end if
	
	if "Extra right page" is in mastersToGenerate then
		pageGen("single", "Sprt-RS", "R_XX_Sport", "XX", "R")
	end if
	
	if "Extra split" is in mastersToGenerate then
		pageGen("spread", "Sprt-Split", "Split_XX-XX_Sport", "XX", "")
	end if
end sportsGen


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


(* Main page-generation handler. Requires four parameters: whether it is a spread or single page, the InDesign master page name, the slug for the document's filename, a page number (if it needs changing), and whether it is a left or right-hand page (for single pages). *)
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