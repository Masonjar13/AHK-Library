#include <_MemoryLibrary>

class threadMan {
    ahkDllPath:=
    dllObj:=
    tHandle:=
    quitTimeout:=1000
    
    ; meta-functions
    
    __New(ahkDllPath,isResource=0){
        this.ahkDllPath:=ahkDllPath
        if(isResource)
            readResource(dlldata,ahkDllPath)
        else
            fileRead,dlldata,% "*c " . ahkDllPath
        this.dllObj:=new _MemoryLibrary(&dlldata)
    }
    
    __Delete(){
        this.quit(this.quitTimeout)
        this.dllObj.free()
        this.dllObj:=this.tHandle:=""
    }
    
    ; methods
    
    newFromText(codeStr,options="",params=""){
        if(this.status())
            return 1
        this.tHandle:=dllCall(this.dllObj.getProcAddress("ahktextdll"),"Str",codeStr,"Str",options,"Str",params,"Cdecl UPtr")
    }
    
    newFromFile(filePath,options="",params=""){
        if(this.status())
            return 1
        this.tHandle:=dllCall(this.dllObj.getProcAddress("ahkdll"),"Str",filePath,"Str",options,"Str",params,"Cdecl UPtr")
    }
    
    waitQuit(timeout="",sleepAccuracy=100){
        if(timeout)
            while(this.status() && timePast < timeout){
                sleep sleepAccuracy
                timePast+=sleepAccuracy
            }
        else
            while(this.status())
                sleep sleepAccuracy
        return this.status()
    }
    
    quit(timeout=0){
        dllCall(this.dllObj.getProcAddress("ahkTerminate"),"Int",timeout,"Cdecl Int")
    }
    
    status(){
        return dllCall(this.dllObj.getProcAddress("ahkReady"))
    }
    
    reload(){
        dllCall(this.dllObj.getProcAddress("ahkReload"))
    }
    
    exec(codeStr){
        return dllCall(this.dllObj.getProcAddress("ahkExec"),"Str",codeStr)
    }
    
    execLine(linePointer="",mode="",wait=""){
        return dllCall(this.dllObj.getProcAddress("ahkExecuteLine"),"UPtr",linePointer,"UInt",mode,"UInt",wait,"Cdecl UPtr")
    }
    
    execLabel(label,wait=0){
        return dllCall(this.dllObj.getProcAddress("ahkLabel"),"Str",label,"UInt",wait,"Cdecl UInt")
    }
    
    execFunc(func,params*){
        if(!params.length())
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Cdecl UInt")
        if(params.length()=1)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Cdecl UInt")
        if(params.length()=2)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Cdecl UInt")
        if(params.length()=3)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Cdecl UInt")
        if(params.length()=4)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Cdecl UInt")
        if(params.length()=5)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Cdecl UInt")
        if(params.length()=6)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Cdecl UInt")
        if(params.length()=7)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Cdecl UInt")
        if(params.length()=8)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Cdecl UInt")
        if(params.length()=9)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Str",params[9],"Cdecl UInt")
        if(params.length()=10)
            return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Str",params[9],"Str",params[10],"Cdecl UInt")
    }
    
    execAFunc(func,params*){
        if(!params.length())
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Cdecl UInt")
        if(params.length()=1)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Cdecl UInt")
        if(params.length()=2)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Cdecl UInt")
        if(params.length()=3)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Cdecl UInt")
        if(params.length()=4)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Cdecl UInt")
        if(params.length()=5)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Cdecl UInt")
        if(params.length()=6)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Cdecl UInt")
        if(params.length()=7)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Cdecl UInt")
        if(params.length()=8)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Cdecl UInt")
        if(params.length()=9)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Str",params[9],"Cdecl UInt")
        if(params.length()=10)
            return dllCall(this.dllObj.getProcAddress("ahkPostFunction"),"Str",func,"Str",params[1],"Str",params[2],"Str",params[3],"Str",params[4],"Str",params[5],"Str",params[6],"Str",params[7],"Str",params[8],"Str",params[9],"Str",params[10],"Cdecl UInt")
    }
    
    varSet(varName,varVal){
        return dllCall(this.dllObj.getProcAddress("ahkassign"),"Str",varName,"Str",varVal)
    }

    varGet(varName,pointer=0){
        return dllCall(this.dllObj.getProcAddress("ahkgetvar"),"Str",varName,"UInt",pointer,"Cdecl Str")
    }
}