/* Written by Masonjar13

	Check if an executable is 64-bit.

	Parameters:
---------------
	path: path to executable
	
	return 1 or 0, if the executable is 64-bit or not
---------------

	Example:
------------
msgbox % is64bitExe(a_winDir "\regedit.exe")
------------

*/

is64bitExe(path){
	dllCall("GetBinaryType","astr",path,"uint*",type)
	return 6=type
}