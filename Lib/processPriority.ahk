/* Written by Masonjar13

	Returns current process priority of process.

	Parameters:
---------------
	PID: PID of process
	
	return: Priority ID
		Above Normal - 0x8000 or ‭32768‬
		Below Normal - 0x4000 or ‭16384‬
		High - 0x80 or 128
		Idle - 0x40 or 64
		Normal - 0x20 or 32
		Realtime - 0x100 or 400
---------------

	Example:
------------
msgbox % processPriority(dllCall("GetCurrentProcessId"))
------------

*/

processPriority(PID){
	return dllCall("GetPriorityClass","UInt",dllCall("OpenProcess","Uint",0x400,"Int",0,"UInt",PID)),dllCall("CloseHandle","Uint",hProc)
}