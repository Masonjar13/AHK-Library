/*
written by maestrith, edited by Masonjar13

params:
	url - url address to download
	raw (optional) - return content as text (0, default) or raw binary (1)
	userAgent (optional) - use a user agent string to appear as a specific OS/device
	headers (optional) - pass an array of headers

examples:
-----
; msgbox external IP information in json
msgbox % urlDownloadToVar("https://dazzlepod.com/ip/me.json")
-----
; pass an API key to TheCatApi and msgbox the returned json
msgbox % urlDownloadToVar("https://api.thecatapi.com/v1/images/search",,,{"x-api-key":myApiKey})

*/

urlDownloadToVar(url,raw:=0,userAgent:="",headers:=""){
    
    if(!regExMatch(url,"i)https?://"))
        url:="https://" url
    try{
        hObject:=comObjCreate("WinHttp.WinHttpRequest.5.1")
        hObject.open("GET",url)
        if(userAgent)
            hObject.setRequestHeader("User-Agent",userAgent)
		if(isObject(headers)){
			for i,a in headers {
				hObject.setRequestHeader(i,a)
			}
		}
        hObject.send()
        return raw?hObject.responseBody:hObject.responseText
    }catch e
        msgbox % e.message

    return 0
}