/* Written by Masonjar13

	Generates random string.

	Dependencies:
		ifContains()
-----------------

	Parameters:
---------------
	lowerBound: minimum length
	
	upperBound: maximum length
	
	mode (optional): possible character types (can be combined)
		1 - lowercase, 2 - uppercase, 3 - digits, 4 - symbols
---------------

	Example:
------------
msgbox % randStr(3,5,1234)
------------

*/

randStr(lowerBound,upperBound,mode:=1){
	if (!isDigit(lowerBound)||!isDigit(upperBound)||!isDigit(mode))
		return -1
	loop % rand(lowerBound,upperBound) {
		t:=""
		if (strLen(mode)=1) {
			t:=mode
		} else {
			while (!ifContains(mode,t))
				t:=rand(1,4)
		}
		if (t=1) {
			str.=chr(rand(97,122))
		} else if (t=2) {
			str.=chr(rand(65,90))
		} else if (t=3) {
			str.=rand(0,9)
		} else if (t=4) {
			i:=rand(1,4)
			str.=i=1?chr(rand(33,47)):i=2?chr(rand(58,64)):i=3?chr(rand(91,96)):chr(rand(123,126))
		}
	}
	return str
}
