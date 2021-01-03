/* Written by Masonjar13

	Invert given string.

	Parameters:
---------------
	str: string to invert
	
	return: inverted string
---------------

	Example:
------------
msgbox % strI("Hello World")
------------

*/

strI(str){
	static rev:=a_isUnicode?"_wcsrev":"_strrev"
	dllCall("msvcrt.dll\" . rev,"Ptr",&str,"CDECL")
	return str
}