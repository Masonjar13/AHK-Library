/* Written by Masonjar13

	Converts seconds to Milliseconds.

	Parameters:
---------------
	s: seconds
	
	return millisecond equivalent of given seconds
---------------

	Example:
------------
msgbox % sToMs(30)
------------

*/

sToMs(s){
	return s*0.1e+4
}