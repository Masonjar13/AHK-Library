/* Written by Masonjar13

	Converts minutes to milliseconds.

	Parameters:
---------------
	m: minutes
	
	return: millisecond equivalent of given minutes
---------------

	Example:
------------
msgbox % mToMs(5)
------------

*/

mToMs(m){
	return m*0.6e+5
}