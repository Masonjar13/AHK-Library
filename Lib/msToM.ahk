/* Written by Masonjar13

	Converts milliseconds to minutes.

	Parameters:
---------------
	ms: milliseconds
	
	return: minute equivalent of given milliseconds
---------------

	Example:
------------
msgbox % msToM(60000)
------------

*/

msToM(ms){
	return round(ms/0.6e+5,2)
}