/* Written by maestrith, modified by Masonjar13

	Downloads a file from a URL and returns it.

	Parameters:
---------------
	url: url to download from
	
	raw (optional): retern content as text (0, default) or raw binary (1)
	
	userAgent (optional): a valid useragent string to be used during
		the http request
	
	headers (optional): pass an array of headers
	
	return: file data or caught error message
---------------

	Example:
------------
; msgbox external IP information in json
msgbox % urlDownloadToVar("https://dazzlepod.com/ip/me.json")

; pass an API key to TheCatApi and msgbox the returned json
msgbox % urlDownloadToVar("https://api.thecatapi.com/v1/images/search",,,{"x-api-key":myApiKey})
------------

*/

urlDownloadToVar(url,raw:=0,userAgent:="",headers:=""){
	if (!regExMatch(url,"i)https?://"))
		url:="https://" url
	try {
		hObject:=comObjCreate("WinHttp.WinHttpRequest.5.1")
		hObject.open("GET",url)
		if (userAgent)
			hObject.setRequestHeader("User-Agent",userAgent)
		if (isObject(headers)) {
			for i,a in headers {
				hObject.setRequestHeader(i,a)
			}
		}
		hObject.send()
		return raw?hObject.responseBody:hObject.responseText
	} catch e
		return % e.message
}