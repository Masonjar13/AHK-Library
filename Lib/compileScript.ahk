/* Written by Masonjar13

	Description

	Parameters:
---------------
	file: path to script
	
	out: name of output executable
	
	bin: path to bin file to be used
	
	icon: path to icon file to be used
	
	mpress: 0 = don't use, 1 = use

	return: returns a_lasterror
---------------

	Example:
------------
if (!a_isCompiled){
	msgbox % "Compiled!`nError code: " compileScript(a_scriptFullPath)
}
else
	msgbox Already compiled!
exitApp
------------

*/

compileScript(file,out:="",bin:="",icon:="",mpress:=0){
	if (!a_ahkPath)
		return

	splitPath,a_ahkPath,,cDir
	cDir.="\Compiler"
	if (bin) {
		splitPath,bin,,bDir
		bin:=!bDir?cDir "\" bin:bin
	}
	if (icon) {
		splitPath,icon,,iDir
		icon:=!iDir?cDir "\" icon:icon
	}
	runWait,% cDir "\Ahk2Exe.exe /in """ file """" (out?" /out """ out """":"") (icon?" /icon """ icon """":"") (bin?" /bin """ bin """":"")(" /mpress " mpress)
	return a_lastError
}