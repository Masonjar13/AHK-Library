/* Written by Masonjar13
	Adds comma format to any integer/float number.

	Parameters:
---------------
	num: integer/float to be parsed

	return: comma formatted value
---------------

	Example:
------------
msgbox % commaFormat(5000293.235645) ; 5,000,293.235645
------------
*/

commaFormat(num){
	num:=strSplit(num,".")
	numlen:=strlen(num[1])

	loop,parse,% num[1]
		xnum.=!mod(numlen-a_index,3) && a_index != numlen ? a_loopfield "," : a_loopfield
	return num[2]?xnum "." num[2]:xnum
}