﻿/* Written by Masonjar13

	Create a list of all static hotkeys in an AHK script file (not perfect).
	Includes #if directives.

	Parameters:
---------------
	filepath: path to AHK file
	
	retObj (optional): 1 - return an object, 0 - return a string
	
	return: list of hotkeys in the form of '{line number} {hotkey or #if}'
---------------

	Example:
------------
msgbox % readHotkeys(a_scriptFullPath)

~F1::
~F2::
return
------------

*/

readHotkeys(filepath,retObj:=0){
	local
	comment:=0,hlObj:={}
	static regExN:={singleComment:"^\s{0,};",blockComment:"^\s{0,}/\*",blockCommentEnd:"^\s{0,}\*/",directive:"i)^\s{0,}#if",hotskey:"::"}
	rFile:=fileOpen(filepath,"r")

	while (!rFile.atEOF) {
		cLine:=rFile.readLine()
		if (comment || cLine~=regExN.singleComment) { ; inside block comment/single-line comment
			if (cLine~=regExN.blockCommentEnd) { ; check for end block comment
				comment:=0
			}
			continue
		} else if (cLine~=regExN.blockComment) { ; check for block comment
			comment:=1
			continue
		} else if (cLine~=regExN.directive || cLine~=regExN.hotskey) { ; get if-directive/get hotstring/hotkey (literal)
			if (retObj)
				hlObj[a_index]:=cLine
			strOut.=a_index a_tab cLine
		}
	}
	rFile.close()
	if (retObj) {
		hlObj.str:=strOut
		return hlObj
	}
	return strOut
}