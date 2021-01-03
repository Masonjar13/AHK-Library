﻿/* Written by Masonjar13

	Retrieve file size from a URL.

	Note: This may request permission from your firewall.

	Parameters:
---------------
	url: url file to check the size of
	
	units (optional): unit size to use (0 = bytes,1 = KiB,
		2 = MiB, etc)
	
	return: size of url file
---------------

	Example:
------------
size1:=urlFileGetSize("ftp://speedtest:speedtest@ftp.otenet.gr/test5Gb-a.db",3)
size2:=urlFileGetSize("ftp://speedtest:speedtest@ftp.otenet.gr/test10Gb.db",3)
size3:=urlFileGetSize("ftp://speedtest:speedtest@ftp.otenet.gr/test100Mb.db",2)

msgbox % size1 " GB`n" size2 " GB`n" size3 " MB`n`n" size
------------

*/

urlFileGetSize(url,units:=0){
	hMod:=dllCall("LoadLibrary",WStr,"wininet.dll")
	hIO:=dllCall("wininet\InternetOpenW"
		,WStr,"Microsoft Internet Explorer"
		,UInt,4		  ; INTERNET_OPEN_TYPE_PRECONFIG_WITH_NO_AUTOPROXY
		,Int,0,Int,0,UInt,0)

	hIU:=dllCall("wininet\InternetOpenUrlW"
		,UInt,hIO,WStr,url,Int,0,Int,0
		,UInt,0x84000000 ; INTERNET_FLAG_DONT_CACHE|INTERNET_FLAG_RELOAD
		,UInt,0)

	if (hIO&hIU) {
		if (subStr(url,1,4)="ftp:") {
			varSetCapacity(huint,4)
			fileSize:=dllCall("wininet\FtpGetFileSize",UInt,hIU,UIntP,huint,UInt) | huint << 32
		} else {
			dllCall("wininet\HttpQueryInfoW"
				,UInt,hIU
				,UInt,0x20000005	 ; HTTP_QUERY_CONTENT_LENGTH|HTTP_QUERY_FLAG_NUMBER
				,UIntP,fileSize,UIntP,4,Int,0)
		}
	}

	dllCall("wininet\InternetCloseHandle",UInt,hIU)
	dllCall("wininet\InternetCloseHandle",UInt,hIO)
	dllCall("FreeLibrary",UInt,hMod)
	if (units)
		fileSize:=round(fileSize/(1024**units),2)
	return fileSize
}