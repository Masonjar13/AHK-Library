/* returned object keys
    ip
    city
    country
    countryCode
    region
    regionCode
    isp
    tz (timezone)
    zip (postal code)
*/

externalIP(ip:=""){
    ipInfoList:={ip:"ip",city:"city",country:"country_name",countryCode:"countryCode",region:"region",regionCode:"region_code",isp:"org",lat:"latitude",long:"longitude",asn:"asn",tz:"timezone",zip:"postal"}
    ipPage:=urlDownloadToVar("https://ipapi.co/" . (ip?ip . "/":"") . "json")
    
    for i,a in ipInfoList{
        regExMatch(ipPage,"Um)""" . a . """: ""?\K[^"",]+(?=""|,)",t)
        ipInfoList[i]:=t
    }
    
    return ipInfoList
    
    /*
    if(ip="me" || regExMatch(ip,"^(\d{1,3}\.){3}\d{1,3}$")){
        ipInfoList:=["ip","city","country","region","isp","latitude","longitude","hostname","asn"]
        ipPage:=urlDownloadToVar("http://dazzlepod.com/ip/" . ip . ".json")
        
        for i,a in ipInfoList{
            regExMatch(ipPage,"Um)""" . (a="isp"?"organization":a) . """: ""?\K[^"",]+(?=""|,)",t)
            ipInfo.insert(a,t)
        }
        return ipInfo
    }else if(regExMatch(ip,"i)^([0-9A-F]{1,4}(::?|$)){2,8}")){
        ipInfoList:=["ip","city","country","region","isp","loc","hostname","postal"]
        ipPage:=urlDownloadToVar("http://ipinfo.io/" . ip . "/json")
        
        for i,a in ipInfoList{
            regExMatch(ipPage,"U)""" . (a="isp"?"org":a) . """: ""\K[^""]+(?="")",t)
            if(a="loc")
                loop,parse,t,`,
                    ipInfo.insert(a_index=1?"latitude":"longitude",a_loopField)
            else
                ipInfo.insert(a,t)
        }
        
        return ipInfo
    }
    */
}
