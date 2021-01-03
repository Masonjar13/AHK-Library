/* Written by Masonjar13

	Allows a winodow without a caption to be moved.
	See borderlessMode function.

	Parameters:
---------------
	winId: WinTitle of a window

	key: keyboard key/mouse button to hold to move window
---------------

	Example:
------------
$~F1::borderlessMode("ahk_exe vlc.exe")
$~LButton::borderlessMove("ahk_exe vlc.exe")
------------

*/

borderlessMove(winId="",key="LButton"){
	winId:=winId?winId:"a"
	bl:=a_batchLines
	winDel:=a_winDelay
	setBatchLines -1
	setWinDelay -1

	winWaitActive,% winId,,0.2
	if(errorlevel)
		return
	winGet,isBorderless,style,a
	winGetPos,,,ww,wh,a
	if (isBorderless & 0xC40000 || (ww=a_ScreenWidth && wh=a_ScreenHeight))
		return
	mouseGetPos,mx,my
	while (getKeyState(key,"P") && winActive(winId)) {
		mouseGetPos,mmx,mmy
		if (mmx!=mx || mmy!=my) {
			winGetPos,vlx,vly,,,a
			winMove,a,,% vlx-(mx-mmx),% vly-(my-mmy)
			mx:=mmx
			my:=mmy
			sleep 0
		} else
			sleep 10
	}
	setWinDelay,% winDel
	setBatchLines % bl
}