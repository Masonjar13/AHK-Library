/* Written by Masonjar13

	Function wrapper of if-between.

	Parameters:
---------------
	in: value to check
	
	return: 1 or 0
---------------

	Example:
------------
msgbox % isBetween(1,50,99)
------------

*/

isBetween(lower,check,upper){
	if check between %lower% and %upper%
		return 1
	return 0
}