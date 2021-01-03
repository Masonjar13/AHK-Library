/* Written by Masonjar13

	Check if a url is accessible from your device.

	Parameters:
---------------
	url (optional): url to check
	
	return: 1 or 0, if a connection could be made or not
---------------

	Example:
------------
msgbox % "Can connect to google: " internetConnected()
------------

*/

internetConnected(url:="http://google.com"){	
	if (!dllCall("Wininet.dll\InternetCheckConnection","Str",url,"Uint",1,"Uint",0))
		return 0
	return 1
}