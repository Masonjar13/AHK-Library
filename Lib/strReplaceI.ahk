/* Written by Masonjar13

	String-inverted StrReplace. Useful if you know it will match towards the end
	of a large string.

	Parameters:
---------------
	haystack: string to search
	
	searchText: text to find
	
	replaceText (optional): replacement text
	
	byRef outputVarCount (optional): variable to store found count
	
	limit (optional): maximum replacements allowed
		
	return: string after replacement
---------------

	Example:
------------
foundStr:=strReplaceI("Hello World","l","_")
msgbox % foundStr "`n" strI(foundStr)
------------

*/

strReplaceI(haystack,searchText,replaceText:="",byref outputVarCount:="",limit:=-1){
	return strI(strReplace(strI(haystack),searchText,replaceText,outputVarCount,limit))
}