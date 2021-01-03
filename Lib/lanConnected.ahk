/* Written by Masonjar13

	Check if you are connected to a LAN.

	Parameters:
---------------
	return: 1 or 0, if connected or not
---------------

	Example:
------------
msgbox % lanConnected()
------------

*/

lanConnected(){
	if (!dllCall("Wininet.dll\InternetGetConnectedState","Str","","Int",0))
		return 0
	return 1
}