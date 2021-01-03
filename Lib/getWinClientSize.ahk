/* Written by Masonjar13

	Retrieve the size of a windows client area.

	Parameters:
---------------
	hwnd: hwnd to window
	
	return: object
		width
		height
---------------

	Example:
------------
winGet,wHwnd,id,ahk_class Notepad ahk_exe notepad.exe
cSize:=getWinClientSize(wHwnd)
msgbox % "Client width: " cSize.width "`nClient height: " cSize.height
------------

*/

getWinClientSize(hwnd){
	varSetCapacity(rect,16,0)
	dllCall("GetClientRect","Ptr",hwnd,"Ptr",&rect)
	return {width: numGet(rect,8,"Int"), height: numGet(rect,12,"Int")}
}