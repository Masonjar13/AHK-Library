/* Written by Masonjar13

	Convert milliseconds to hours.

	Parameters:
---------------
	ms: milliseconds
	
	return: hour equivalent of given milliseconds
---------------

	Example:
------------
msgbox % msToH(3600000)
------------

*/

msToH(ms){
	return round(ms/3.6e+6,2)
}