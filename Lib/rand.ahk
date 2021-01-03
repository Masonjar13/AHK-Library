/* Written by Masonjar13

	Function wrapper for 'random' command.

	Parameters:
---------------
	lowerBound: minimum possible value
	
	upperBound: maximum possible value
	
	return: random value
---------------

	Example:
------------
msgbox % rand(1,100)
------------

*/

rand(lowerBound,upperBound){
	random,rand,% lowerBound,% upperBound
	return rand
}