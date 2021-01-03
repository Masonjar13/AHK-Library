/* Written by Masonjar13

	Converts an object into a string for debugging purposes.

	Parameters:
---------------
	obj: object to convert
	
	return: object string
---------------

	Example:
------------
msgbox % stringify({"He":"lo","Wo":"rld"}
------------

*/

stringify(obj){
	local outStr,i,a

	for i,a in obj
		outStr.=(a_index!=1?",":"") (regExMatch(i,"\W")?"""" . i . """":i) . ": " . (isObject(a)?stringify(a):"""" a """")
	
	return "{" outStr "}"
}