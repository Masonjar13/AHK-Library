; Requires _MemoryLibrary and readResource()

#include <_MemoryLibrary>

class threadMan {
    ahkDllPath:=
    dllObj:=
    tHandle:=
    
    ; meta-functions
    
    __New(ahkDllPath="",isResource=0){
        this.ahkDllPath:=ahkDllPath
        if(isResource)
            readResource(dlldata,ahkDllPath)
        else
            fileRead,dlldata,% "*c " . ahkDllPath
        this.dllObj:=new _MemoryLibrary(&dlldata)
    }
    
    __Delete(){
        this.quit()
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
    
    execLabel(label,wait=""){
        return dllCall(this.dllObj.getProcAddress("ahkLabel"),"Str",label,"UInt",wait,"Cdecl UInt")
    }
    
    execFunc(func,params*){
        return dllCall(this.dllObj.getProcAddress("ahkFunction"),"Str",func,params*)
    }
}
