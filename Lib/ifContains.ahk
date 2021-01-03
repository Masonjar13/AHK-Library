/* Written by Masonjar13

	Function wrapper for if-contains command.

	Parameters:
---------------
	haystack: string/value
	
	needle: csv matchlist
	
	return: 1 or null, if haystack does or does not contain an element in matchlist/needle
---------------

	Example:
------------
msgbox % ifContains("hello","nel,low") ifContains("hello","hel,not")
------------

*/

ifContains(haystack,needle){
	if haystack contains %needle%
		return 1
}