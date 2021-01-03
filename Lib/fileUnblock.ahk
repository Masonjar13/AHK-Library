/* Written by Masonjar13

	Removes the "This file came from another computer" flag on files.

	Parameters:
---------------
	path: path to file
	
	return: errorlevel of fileDelete
---------------

	Example:
------------
fileUnblock(a_desktop "\recently downloaded file.exe")
------------

*/

fileUnblock(path){
	fileDelete,% path ":Zone.Identifier:$DATA"
	return errorlevel
}