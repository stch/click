--
--  AppDelegate.applescript
--  clicka
--
--  Created by Satoshi H on 2019/04/26.
--  Copyright © 2019 stch. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	property dispText : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
		-- display dialog "L"
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
	on doCliClick_(sender)
		set dispText's text to "start"
		set tmp to AppleScript's text item delimiters
		set AppleScript's text item delimiters to {","}
		set mouseLocB to (do shell script "~/bin/click/cliclick p") as text
		set mouseLocBX to text item 1 of mouseLocB as integer
		-- display dialog mouseLocBX
		set mouseLocBY to text item 2 of mouseLocB as integer
		--display dialog mouseLocBY
		
		set mouseLoc to mouseLocB
		set mouseLocX to mouseLocBX
		set mouseLocY to mouseLocBY
		
		repeat while (mouseLocX - mouseLocBX) ^ 2 + (mouseLocY - mouseLocBY) ^ 2 < 25
			--set mouseLoc to (do shell script "~/bin/click/cliclick p c:. c:. c:. c:. c:.") as text
			set mouseLoc to (do shell script "~/bin/click/cliclick p c:. c:. c:. c:. c:. c:. c:. c:. c:. c:.  c:. c:. c:. c:. c:. c:. c:. c:. c:. c:.  c:. c:. c:. c:. c:. c:. c:. c:. c:. c:.  c:. c:. c:. c:. c:. c:. c:. c:. c:. c:.  c:. c:. c:. c:. c:. c:. c:. c:. c:. c:.  ") as text
			set mouseLocX to text item 1 of mouseLoc as integer
			set mouseLocY to text item 2 of mouseLoc as integer
		end repeat
		set AppleScript's text item delimiters to tmp
		--display dialog mouseLocB & " : " & mouseLoc
	end doCliClick_
	
end script
