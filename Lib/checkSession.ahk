﻿/*
	Creates a session message routine targeted at the given function.
	Format will be changed to hex for the duration of the function call.
	
	NOTE: globals must be used

	Parameters:
---------------
		- Parameters (explicit call)
	param1:str - function called upon recieving message
	param2:bool - return only the wParam, or session status

		- Parameters (message call)
	param1:int - wParam: session status
	param2:int - lParam: session ID
	param3:int - Msg: message ID (always 0x02B1 or 689)
	param4:int - hWnd: hwnd of script

		- Status ID's
	WTS_CONSOLE_CONNECT (0x1)
	WTS_CONSOLE_DISCONNECT (0x2)
	WTS_REMOTE_CONNECT (0x3)
	WTS_REMOTE_DISCONNECT (0x4)
	WTS_SESSION_LOGON (0x5)
	WTS_SESSION_LOGOFF (0x6)
	WTS_SESSION_LOCK (0x7)
	WTS_SESSION_UNLOCK (0x8)
	WTS_SESSION_REMOTE_CONTROL (0x9)
	WTS_SESSION_CREATE (0xA) (not implemented as of Windows 8.1)
	WTS_SESSION_TERMINATE (0xB) (not implemented as of Windows 8.1)
		More info: https://msdn.microsoft.com/en-us/library/aa383828%28v=vs.85%29.aspx
---------------

	Example:
------------
; keep a log when a computer becomes locked or unlocked

checkSession("sessionMsgHandler")

sessionMsgHandler(status,ID,Msg,hwnd){
	if (status=0x7)
		fileAppend,Session Locked`n,%a_desktop%\log.txt
	else if (status=0x8)
		fileAppend,Session Unlocked`n,%a_desktop%\log.txt
	fileAppend,% "	" format("{:#x}",status) " " format("{:#x}",ID) " " format("{:#x}",Msg) " " format("{:#x}",hwnd) "`n",%a_desktop%\log.txt
	return
}
-----------
*/

checkSession(callback){
	onMessage(0x02B1,callback) ;WM_WTSSESSION_CHANGE
	dllCall("Wtsapi32.dll\WTSRegisterSessionNotification","uint",a_scriptHwnd,"uint",NOTIFY_FOR_ALL_SESSIONS)
}