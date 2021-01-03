/* Written by Masonjar13

	Function wrapper for if-in command.

	Parameters:
---------------
	needle: string/value
	
	haystack: csv matchlist
	
	return: 1 or null, if needle is or is not in haystack/matchlist
---------------

	Example:
------------
msgbox % ifIn("hello","hel,not") ifIn("hello","hello,not")
------------

*/

ifIn(needle,haystack){
	if needle in %haystack%
		return 1
}