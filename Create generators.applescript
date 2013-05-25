-- Create the run-only .app files
tell application "Script Debugger"
	tell the front document
		if the name is "core.scpt" then
			set sourceCode to the source text
		else
			set coreScript to open file "SSD:Users:robjwells:Programming:Morning Star:Generators:core.scpt"
			set sourceCode to the source text of coreScript
			close coreScript saving no
		end if
	end tell
end tell

set appsFolder to "SSD:Users:robjwells:Programming:Morning Star:Generators:Run-only apps:"
set desk_list to {"News", "Features", "Sport", "Arts", "Custom edition"}

repeat with x from 1 to (count of desk_list)
	set theDesk to (item x of desk_list as string)
	launch application "BBEdit"
	tell application "BBEdit"
		set bbDoc to make new document
		set the text of bbDoc to sourceCode
		replace "genPrompt(\"\")" using "genPrompt(\"" & theDesk & "\")" searching in text 1 of window 1 options {search mode:literal, starting at top:true}
		set newCode to the text of bbDoc
		tell bbDoc to close saving no
	end tell
	
	launch application "AppleScript Editor"
	tell application "AppleScript Editor"
		set aseDoc to make new document
		set the text of aseDoc to newCode
		tell aseDoc
			activate -- Safeguard for later "front doc" tell
			compile
			if theDesk is not "Custom edition" then
				set newFile to save as "application" in (appsFolder & theDesk & ".app") with run only without startup screen and stay open
			else
				set newFile to save as "script" in (appsFolder & theDesk & ".scpt") with run only
			end if
		end tell
		tell the front document to close saving no
	end tell
end repeat


-- Replace default .app icon with custom one
-- Uses shell as the Finder tends to throw an error for no reason
set genRoot to "/Users/robjwells/Documents/Programming/Morning\\ Star/Generators/"

repeat with x from 1 to 4 -- Excludes "Custom edition", which is item 5
	set theDesk to item x of desk_list
	set iconFile to (genRoot & "/Icon\\ files/" & theDesk & ".icns")
	set appletRoot to (genRoot & "Run-only\\ apps/" & theDesk & ".app/Contents/Resources/")
	set appletIcon to (appletRoot & "applet.icns")
	
	-- Copy custom icon into .app, delete default applet.icns, rename custom icon
	do shell script ("cp " & iconFile & " " & appletRoot & " ; rm " & appletIcon & " ; mv " & appletRoot & theDesk & ".icns " & appletIcon)
end repeat
