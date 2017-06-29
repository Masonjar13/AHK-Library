externalIP(){
    ipInfo:={}
    ipInfoList:=["ip","city","country","region","isp","latitude","longitude","hostname","asn"]
    ipPage:=urlDownloadToVar("http://dazzlepod.com/ip/me.json")
    
    for i,a in ipInfoList{
        regExMatch(ipPage,"U)""" . (a="isp"?"organization":a) . """: ""\K[^""]+(?="")",t)
        ipInfo.insert(a,t)
    }
    return ipInfo
}
