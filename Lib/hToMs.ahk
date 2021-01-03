/* Written by Masonjar13

	Convert hours to milliseconds.

	Parameters:
---------------
	h: hours
	
	return: millisecond equivalent of given hours
---------------

	Example:
------------
; sleep hToMs(0.5)
msgbox % hToMs(1)
------------

*/

hToMs(h){
	return h*3.6e+6
}