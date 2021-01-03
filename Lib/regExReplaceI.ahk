/* Written by Masonjar13

	String-inverted RegExReplace. Useful if you know it will match towards the end
	of a large string.
	
	Dependencies:
		strI()
-----------------

	Parameters:
---------------
	haystack: string to search
	
	needleRegEx: regex to use
	
	replacement (optional): replacement text
	
	byRef outputVarCount (optional): variable to store found count
	
	limit (optional): maximum replacements allowed
	
	startingPosition (optional): string position to start at
	
	return: string after replacement
---------------

	Example:
------------
foundStr:=regExReplaceI("Hello World","[A-Z]","M")
msgbox % foundStr "`n" strI(foundStr)
------------

*/

regExReplaceI(haystack,needleRegEx,replacement:="",byref outputVarCount:="",limit:=-1,startingPosition:=1){
	return strI(regExReplace(strI(haystack),needleRegEx,replacement,outputVarCount,limit,startingPosition))
}