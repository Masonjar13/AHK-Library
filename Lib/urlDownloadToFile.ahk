/* Written by Masonjar13

	Downloads a file from a URL to a local file.

	Parameters:
---------------
	url: url to download from
	
	fileDest (optonal): local path to save to (defaults to script
		folder with name of file from the url)
	
	userAgent (optional): a valid useragent string to be used during
		the http request
	
	return: caught error message
---------------

	Example:
------------
urlDownloadToFile("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png")
------------

*/

urlDownloadToFile(url,fileDest:="",userAgent:=""){
	if (!fileDest) {
		splitPath,url,fileDest
		fileDest:=a_scriptDir "\" fileDest
	}
	if (!regExMatch(url,"i)https?://"))
		url:="https://" url
	try {
		hObject:=comObjCreate("WinHttp.WinHttpRequest.5.1")
		hObject.open("GET",url)
		if (userAgent)
			hObject.setRequestHeader("User-Agent",userAgent)
		hObject.send()
		
		uBytes:=hObject.responseBody,cLen:=uBytes.maxIndex()
		fileHandle:=fileOpen(fileDest,"w")
		varSetCapacity(f,cLen,0)
		loop % cLen+1
			numPut(uBytes[a_index-1],f,a_index-1,"UChar")
		err:=fileHandle.rawWrite(f,cLen+1)
	} catch e
		return % e.message
}