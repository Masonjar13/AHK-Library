/* Written by Masonjar13

	Set the volume of a given WinTitle. This is equivalent to
	opening the volume mixer and changing an applications volume.

	Dependencies:
		VA
-----------------

	Parameters:
---------------
	winName (optional): winTitle of any window, defaults to active
	
	vol: volume level between 0-100; can be + or - prefixed to step
---------------

	Example:
------------
setWindowVol("ahk_exe vlc.exe",50) ; set it to 50%
setWindowVol("ahk_exe vlc.exe","+10") ; set it to +10 percent of its current volume
setWindowVol("ahk_exe vlc.exe","-10") ; set it to -10 percent of its current volume
------------

*/

#include <VA>

setWindowVol(winName:="a",vol:="n"){
	if (vol=="n")
		return
	winGet,winPid,PID,% winName
	if !(volume:=GetVolumeObject(winPid))
		return
	vsign:=subStr(vol,1,1)
	if (vsign="+"||vsign="-") {
		vol:=subStr(vol,2),vol/=100
		
		VA_ISimpleAudioVolume_GetMasterVolume(volume,cvol)
		if (vsign="+")
			vol:=cvol+vol>1?1:cvol+vol
		else if (vsign="-")
			vol:=cvol-vol<0?0:cvol-vol
	} else
		vol/=100
	VA_ISimpleAudioVolume_SetMasterVolume(volume,vol),objRelease(volume)
}