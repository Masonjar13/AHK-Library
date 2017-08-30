; retrieve the current time by country [and region]
getCurrentTime(country,region:=""){
    static regStr:="U)id=""fshrmin"">([^<]+)<.*id=""fsampm"">([^<]+)<.*class=""fs-date"">([^<]+)<"
    static url:="https://www.timeanddate.com/time/zone/"
    
    regExMatch(urlDownloadToVar(url . country . (region?"/" . region:"")),regStr,cT)
    return cT?{time: cT1,ampm: cT2,date: cT3}:0
}