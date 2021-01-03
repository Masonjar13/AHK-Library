/* Written by Masonjar13

	String-inverted RegExMatch. Useful if you know it will match towards the end
	of a large string.
	
	Dependencies:
		strI()
-----------------

	Parameters:
---------------
	haystack: string to search
	
	needleRegEx: regex to use
	
	byRef unquotedOutputVar (optional): variable to store found string
	
	startingPosition (optional): string position to start at
	
	return: position of found match
---------------

	Example:
------------
msgbox % regExMatchI("Hello World",".{3}",foundStr)
msgbox % foundStr "`n" strI(foundStr)
------------

*/

regExMatchI(haystack,needleRegEx,byRef unquotedOutputVar:="",startingPosition:=1){
	return abs(regExMatch(strI(haystack),needleRegEx,unquotedOutputVar,startingPosition)-strLen(haystack))+1
}