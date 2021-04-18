#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm
;;
;WARNING, CURRENTLY UNTESTED - WILL TEST SOON.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using LUAmacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg
; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s
; so you also need LUAmacros as well, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luaMacros, because I believe interecept.exe is even better! My current code is available in "ALL MULTIPLE KEYBOARD ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------

;#IfWinActive ahk_exe Adobe Premiere Pro.exe ;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO. You can use Window Spy to determine the ahk_exe of any program, so that your macros will only work when and where you want them to.

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
FileRead, key, C:\Users\mattl\Documents\GitHub\2nd-keyboards\keypressed.txt
;tippy(key) ; this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
If (key = "0")
Send !{F4}
else if (key = "1")
msgbox 1
else if (key = "2")
msgbox 2
else if (key = "3")
msgbox 3
else if (key = "4")
Send ^#{Left}
else if (key = "5")
Send ^#{Right}
else if (key = "6")
msgbox 6
else if (key = "7")
msgbox 7
else if (key = "8")
msgbox 8
else if (key = "9")
msgbox 9
else if (key = "10")
Reload
else if (key = "11")
DllCall("LockWorkStation")
else if (key = "12")
msgbox 12
else if (key = "13")l
msgbox 13 Run
else if (key = "14")
msgbox 14
else if (key = "15")
msgbox 15
else if (key = "16")
msgbox 16
else if (key = "17")
msgbox 17
else if (key = "18")
msgbox 18
else if (key = "19")
msgbox 19
else if (key = "20")
msgbox 20
else if (key = "21")
msgbox 21
else if (key = "22")
msgbox 22
else if (key = "23")
msgbox 23
else if (key = "24")
msgbox 24
else if (key = "25")
msgbox 25
else if (key = "26")
msgbox 26
else if (key = "27")
msgbox 27
else if (key = "28")
msgbox 28
else if (key = "29")
msgbox 29
else if (key = "30")
msgbox 30
else if (key = "31")
msgbox 31

Return ;from luamacros F24+
#If
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.
/*
#IfWinActive ahk_exe atom.exe
~F24::
FileRead, key, C:\Users\mattl\Documents\GitHub\2nd-keyboards\keypressed.txt
If (key = "1")
WinActivate ahk_exe chrome.exe
else if (key = "2")
WinActivate ahk_exe GitHubDesktop.exe
return
#If
*/

;;;ALL THE CODE BELOW CAN BE THE ACTUAL FUNCTIONS THAT YOU WANT TO CALL;;;


;;;;;;temporary tooltip maker;;;;;;
Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return
;;;;;;/temporary tooltip maker;;;;;;


insertSFX(parameter){
msgbox, you launched insertSFX with the parameter %parameter%

}


audiomonomaker(parameter){
msgbox, you launched audiomonomaker with the parameter %parameter%

}


preset(parameter){
msgbox, you launched PRESET with the parameter %parameter%

}


recallTransition(parameter){
msgbox, you launched recallTransition with the parameter %parameter%
}


copy(bar){
msgbox, you launched COPY with the parameter %bar%

}

paste(foo){
msgbox, you launched PASTE with the parameter %foo%

}
