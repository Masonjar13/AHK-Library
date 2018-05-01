; written by maestrith, edited by Masonjar13
urlDownloadToVar(url,raw:=0,userAgent:=""){
    
    if(!regExMatch(url,"i)https?://"))
        url:="https://" url
    try{
        hObject:=comObjCreate("WinHttp.WinHttpRequest.5.1")
        hObject.open("GET",url)
        if(userAgent)
            hObject.setRequestHeader("User-Agent",userAgent)
        hObject.send()
        return raw?hObject.responseBody:hObject.responseText
    }catch e
        msgbox % e.message

    return 0
}