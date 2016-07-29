borderlessMove(hwnd="A",key="LButton",cmoder="screen"){
    winDel:=a_winDelay
    setWinDelay, 0
    coordMode,mouse,screen
    winWaitActive,% hwnd,,0.2
    if(errorlevel)
        return
    winGet,isBorderless,style,A
    winGetPos,,,ww,wh,A
    if(isBorderless & 0xC40000 || (ww=A_ScreenWidth && wh=A_ScreenHeight))
        return
    mouseGetPos,mx,my
    while(getKeyState(key,"P") && winActive(hwnd)){
        mouseGetPos,mmx,mmy
        if(mmx!=mx || mmy!=my){
            winGetPos,vlx,vly,,,A
            winMove,A,,% vlx-(mx-mmx),% vly-(my-mmy)
            mx:=mmx
            my:=mmy
        }
    }
    coordMode,mouse,% cmoder
    setWinDelay,% winDel
}