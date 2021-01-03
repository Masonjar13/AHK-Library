/* Written by Masonjar13

	Check if a particular window is currently under the mouse.

	Parameters:
---------------
	winName: WinTitle to check against
	
	winText (optonal): window text to check against
	
	return: 1 or 0, if winName is under the mouse or not
---------------

	Example:
------------
msgbox % mouseOverWin("ahk_class Notepad ahk_exe notepad.exe")
------------

*/

mouseOverWin(winName,winText:=""){
	winGet,cH,id,% winName,% winText
	mouseGetPos,,,cHw
	return cH=cHw
}