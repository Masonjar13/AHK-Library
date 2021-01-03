/* Written by Masonjar13

	Retrieves path of currently selected/highlighted item in explorer.

	Parameters:
---------------
	return: path of item
---------------

	Example:
------------
; select an icon on the desktop and press F1
F1::msgbox % getSelected()
------------

*/

getSelected(){
	cO:=clipboardAll
	clipboard:=
	send ^c
	clipWait,0.5
	if (errorlevel) {
		clipboard:=c0
		return
	}
	path:=clipboard
	clipboard:=cO
	return path
}