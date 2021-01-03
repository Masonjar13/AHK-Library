/* Written by Masonjar13

	Mute a window.

	Dependencies:
		VA
-----------------

	Parameters:
---------------
	winName: WinTitle of window
	
	mode: t - toggle, 0 - off, 1 - on
---------------

	Example:
------------
F1::muteWindow()
------------

*/

#include <VA>

muteWindow(winName:="a",mode:="t"){
	winGet,winPid,PID,% winName
	if !(volume:=GetVolumeObject(winPid))
		return
	if (mode="t") {
		VA_ISimpleAudioVolume_GetMute(volume,Mute)  ;Get mute state
		VA_ISimpleAudioVolume_SetMute(volume,!Mute) ;Toggle mute state
	} else if (mode<=1 && mode>=1) {
		VA_ISimpleAudioVolume_SetMute(volume,mode)
	}
	objRelease(volume)
	return
}