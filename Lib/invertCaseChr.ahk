/* Written by Masonjar13

	Inverts the case of a character.

	Parameters:
---------------
	char: character to invert
	
	return: case-inverted character
---------------

	Example:
------------
msgbox % invertCaseChr("a")
------------

*/

invertCaseChr(char){
	return asc(char)>96?chr(asc(char)-32):chr(asc(char)+32)
}