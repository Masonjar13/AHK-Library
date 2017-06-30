externalIP(ip:="me"){
    ipInfo:={}
    ipInfoList:=["ip","city","country","region","isp","latitude","longitude","hostname","asn"]
    ipPage:=urlDownloadToVar("http://dazzlepod.com/ip/" . ip . ".json")
    
    for i,a in ipInfoList{
        regExMatch(ipPage,"U)""" . (a="isp"?"organization":a) . """: ""\K[^""]+(?="")",t)
        ipInfo.insert(a,t)
    }
    return ipInfo
}
