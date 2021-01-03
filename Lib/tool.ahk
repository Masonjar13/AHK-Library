/* Written by Masonjar13

	Tooltip with a timer.

	Parameters:
---------------
	str (optional): text to display in tooltip
	
	wait (optional): tooltip timeout in milliseconds
	
	x (optional): x coord for the tooltip
	
	y (optional): y coord for the tooltip
	
	return: given str (for inline debugging)
---------------

	Example:
------------
tool("Hello World",3000)
sleep 5000
------------

*/

tool(str:="",wait:=2500,x:="",y:=""){
	static tf:=func("tool")
	
	if (!str) {
		tooltip
	} else {
		tooltip,% str,% x,% y
		setTimer,% tf,% "-" wait
	}
	return str
}