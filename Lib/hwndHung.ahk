/* Written by Masonjar13

	Check if a window is hung/non-responsive.

	Parameters:
---------------
	hwnd: hwnd of window
	
	return: 0 if responsive, 1 if unresponsive
---------------

	Example:
------------
winGet,wHwnd,id,ahk_class Notepad ahk_exe notepad.exe
msgbox % hwndHung(wHwnd)
------------

*/

hwndHung(hwnd){
	return dllCall("user32\IsHungAppWindow","Ptr",hwnd)
}