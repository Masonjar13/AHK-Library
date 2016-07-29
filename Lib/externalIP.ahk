externalIP(){
    ipInfo:={}
    ipInfoList:=["ip","city","country","region","isp"]
    ipPage:=urlDownloadToVar("http://dazzlepod.com/ip/me.json")
    for i,a in ipInfoList{
        if(a="isp")
            regExMatch(ipPage,"U)""organization"": "".* - \K.*(?=,)",t)
        else
            regExMatch(ipPage,"U)""" a """: ""\K.*(?="")",t)
        ipInfo.insert(a,t)
    }
    return ipInfo
}