internetConnected(){
    if(!dllCall("Wininet.dll\InternetGetConnectedState","Str",0x40,"Int",0))
        return 0
    runWait,%a_winDir%\System32\ping.exe "www.google.com",,hide
    return !errorlevel?1:0
}