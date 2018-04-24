#include <VA>

setWindowVol(winName:="a",vol:="n"){
    if(vol=="n")
        return
    winGet,winPid,PID,% winName
    if !(volume:=GetVolumeObject(winPid))
        return
    vsign:=subStr(vol,1,1)
    if(vsign="+"||vsign="-"){
        vol:=subStr(vol,2),vol/=100
        
        VA_ISimpleAudioVolume_GetMasterVolume(volume,cvol)
        if(vsign="+")
            vol:=cvol+vol>1?1:cvol+vol
        else if(vsign="-")
            vol:=cvol-vol<0?0:cvol-vol
    }else
        vol/=100
    VA_ISimpleAudioVolume_SetMasterVolume(volume,vol)
    objRelease(volume)
}