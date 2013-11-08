menuItemClick({"Microsoft Lync", "Status", "Sign In..."})

#http://blog.strug.de/2011/05/applescript-to-test-if-application-is-not-running-and-how-that-helps-to-switch-marcopolo-contexts/
on is_running(appName)
	tell application "System Events" to (name of processes) contains appName
end is_running

on menuItemClick({appName, menuName1, menuItem1})
	set app_is_running to is_running(appName)
	
	tell application "System Events"
		if app_is_running then
			tell application process appName
				if menu item "Sign In..." of menu 1 of menu bar item "Status" of menu bar 1 exists then
					set frontmost to true
					click menu item menuItem1 of menu 1 of menu bar item menuName1 of menu bar 1
					
				else
					return "Already in"
				end if
			end tell
		else
			return "no lync"
		end if
	end tell
	
end menuItemClick
