/* Written by Masonjar13

	Sets the required styles to make a window borderless.

	Parameters:
---------------
	winId: WinTitle of a window

	onOff: 0 - off/disabled, 1 - on/enabled, null or "t" - toggle state
---------------

	Example:
------------
F1::borderlessMode("ahk_exe vlc.exe",1) ; enable borderlessMode in VLC
F2::borderlessMode("ahk_exe vlc.exe",0) ; disable borderlessMode
F3::borderlessMode("ahk_exe vlc.exe") ; toggle borderlessMode
------------

*/

borderlessMode(winId:="",onOff:="t"){
	winId:=winId?winId:"a"
	if (onOff="t") {
		winSet,alwaysOnTop,toggle,% winId
		winSet,style,^0xC40000,% winId
	} else if (onOff) {
		winSet,alwaysOnTop,on,% winId
		winSet,style,+0xC40000,% winId
	} else {
		winSet,alwaysOnTop,off,% winId
		winSet,style,-0xC40000,% winId
	}
	winGetPos,,,winw,,% winId
	winMove,a,,,,% winw+5
	winMove,a,,,,% winw
}