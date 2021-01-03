/* Written by Masonjar13

	Converts milliseconds to seconds.

	Parameters:
---------------
	ms: milliseconds
	
	return: second equivalent of given milliseconds
---------------

	Example:
------------
msgbox % msToS(30000)
------------

*/

msToS(ms){
	return round(ms/0.1e+4,2)
}