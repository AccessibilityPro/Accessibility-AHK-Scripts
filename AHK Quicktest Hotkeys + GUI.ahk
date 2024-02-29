;SLEEP VARS
vTest=150

;GUI

ToolTip , Press F12 to toggle help, -2000, -2000, 1 ;Creates tool tip and coordinates set it to top left corner, -2000 and -2000 are X and Y, 1 is WhichToolTip

Gui, Add, Tab3,, Welcome/Help|Rates

Gui, Tab, 1
Gui, Add, Text,, Welcome to my key input hotkey script!
Gui, Add, Text,, Toggle this help window with F12
Gui, Add, Text,, ---------------------------------------------------------
Gui, Add, Text,, Hold F11 to automate TAB
Gui, Add, Text,, Hold F10 to automate SHIFT+TAB
Gui, Add, Text,, Hold F9 to automate TAB and ENTER (Useful for tabbing and opening links)
Gui, Add, Text,, Hold F8 to automate ARROW KEY DOWN and ENTER (Useful for a list accessible via arrowkeys with links)
Gui, Add, Text,, Hold F7 to TAB and type text TEST (Useful for a webpage with MANY text boxes)
Gui, Add, Text,, Hold F6 to TAB then input SPACE twice (Useful for checkboxes and dropdown menus)
Gui, Add, Text,, Hold F5 to SHIFT+TAB then input SPACE twice (Useful for checkboxes and dropdown menus)
Gui, Add, Text,, Hold F1 to rapidly click mouse 1 (Useful for closing mass windows)

Gui, Tab, 2
Gui, Add, Text,, Change sleep rates for the various scripts
Gui, Add, Edit
Gui, Add, UpDown, vTest Range1-1000, 150

Gui, Margin , 1, 1 ;Sets margin
Gui, Show
HIDDEN=0 ;Assign variable as 0 to indicate not hidden
Winset, AlwaysOntop, , A ;Forces GUI to top

;Toggle GUI
F12::
	if (HIDDEN=0)
	{
		Gui, Hide
		HIDDEN=1 ;Now that Gui is hidden, var is set to 1
		return
		}
	else (HIDDEN=1)
	{
		Gui, Show
		HIDDEN=0 ;Now that Gui is unhidden, var is set to 0
		return
		}
return


;Hotkey scripts

;PLEASE NOTE: You can change the tempo of any of the tests by changing the sleep length

;This is for tabbing forwards

F11::
While GetKeyState("F11","P")
{
Sleep 150
Send {Tab}
Sleep 150
}
return
;This is for tabbing in reverse

F10::
While GetKeyState("F10","P")
{
Sleep 150
Send +{Tab}
Sleep 150
}
return

;This tabs and then opens the link in a new tab, I recommend this for pages with a lot of links
;Sleep 300 is a decent rate to be able to perceive links being opened to guarantee they are working correctly
F9::
While GetKeyState("F9","P")
{
Sleep 300
Send {Tab}
Send ^{Enter}
Sleep 300
}
return

;This inputs the down key and opens links in a new tab, I recommend this for lists in an interactable dropdown
;Sleep 300 is a decent rate to be able to perceive links being opened to guarantee they are working correctly
F8::
While GetKeyState("F8","P")
{
Sleep 300
Send {Down}
Send ^{Enter}
Sleep 300
}
return

;This quickly tabs you to text boxes and allows you to see if the text box can have text entered
F7::
While GetKeyState("F7","P")
{
Sleep 150
Send {Tab}
Send Test
Sleep 150
}
return

;This quickly tabs you to checkboxes and lets you check if checkboxes can be checked/unchecked and test dropdowns quickly
;It should open or close, or check or uncheck fairly quickly speeds up testing 	
F6::
While GetKeyState("F6","P")
{
Sleep 150
Send {Tab}
Send {Space}
Sleep 150
Send {Space}
Sleep 150
}
return

;This quickly tabs you to checkboxes and lets you check if checkboxes can be checked/unchecked and test dropdowns in reverse
F5::
While GetKeyState("F5","P")
{
Sleep 150
Send +{Tab}
Send {Space}
Sleep 150
}
return

;This quickly tabs you to checkboxes and lets you check if checkboxes can be checked/unchecked and test dropdowns 
F4::
While GetKeyState("F4","P")
{
Sleep 150
Send {Tab}
Send {Space}
Sleep 150
}
return


;Rapidly click, good for closing windows fast
F1::
While GetKeyState("F1","P")
{
Sleep 1
Send {Click}
Sleep 1
}
return

;Old code that may be good for reference
;This quickly tabs you to checkboxes and lets you check if checkboxes can be checked/unchecked and test dropdowns in reverse
;F5::
;While GetKeyState("F5","P")
;{
;Sleep 150
;Send +{Tab}
;Send {Space}
;Sleep 150
;}
;return



