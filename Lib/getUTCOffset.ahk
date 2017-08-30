; retrieve the UTC offset by timezone
getUTCOffset(timezone){
    static regStr:="U)UTC Offset:<\/a>[^+]+\+(\d{1,2}):(\d{1,2})<"
    static url:="https://www.timeanddate.com/time/zones/"
    
    regExMatch(urlDownloadToVar(url . timezone),regStr,cT)
    return cT?{hour: cT1,minute: cT2}:0
}