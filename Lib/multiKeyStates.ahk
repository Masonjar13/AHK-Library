/* Written by Masonjar13

	Checks for multiple key states at once.

	Parameters:
---------------
	keyArray: array of keys to be checked
	
	andor (optional): 0, use 'and' to check, 1, use 'or' to check
	
	mode (optional): getKeyState mode
	
	return: 1 or 0, if keystates are pressed or released
---------------

	Example:
------------
^F1::
f:=0
while (multiKeyStates(["ctrl","F1"])) {
	tooltip,% f+=10
	sleep 10
}
return
------------

*/

multiKeyStates(keyArray,andor:=0,mode:="P"){
	for i,a in keyArray {
		state:=getKeyState(a,mode)
		statea+=state
		if (!andor && !state)
			return 0
		else if (andor && state)
			return 1
	}
	return !statea?0:1
}