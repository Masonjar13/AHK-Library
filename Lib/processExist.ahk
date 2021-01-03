/* Written by Masonjar13

	Function wrapper for 'process, exist' command.

	Parameters:
---------------
	im: PID or name of process
	
	return: PID of process or 0 if not found
---------------

	Example:
------------
msgbox % processExist("system")
------------

*/

processExist(im){
	process,exist,% im
	return errorLevel
}