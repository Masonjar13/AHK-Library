/* Written by Masonjar13

	Offset a value based on current system DPI setting.

	Parameters:
---------------
	val: value to be offset
---------------

	Example:
------------
dpiAControlXPosition:=dpiOffset(controlXPosition)
------------

*/

dpiOffset(val){
	return A_ScreenDpi=96?0:floor(val*(floor(A_ScreenDpi/96)/100))
}