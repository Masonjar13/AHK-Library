/* Written by Masonjar13

	Inverts the case of a string.

	Parameters:
---------------
	str: string to invert
	
	return: case-inverted string
---------------

	Example:
------------
msgbox % invertCaseStr("hELLO")
------------

*/

invertCaseStr(str){
	loop,parse,str
		nStr.=asc(a_loopField)>96?chr(asc(a_loopField)-32):chr(asc(a_loopField)+32)
	return nStr
}