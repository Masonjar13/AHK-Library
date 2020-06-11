/*
Library to remove traditional syntax/commands from _L/1.1
by wrapping them all into functions.

If command sets errorlevel, it will be returned. Any
command that has a second function will not use byref,
but will return an object with the data, including
errorlevel. Any functions that create a pseudo-array
use global (second function returns the array).

*/

autoTrim(onOff){
	autoTrim,% onOff
}

blockInput(option){
	blockInput,% option
}

click(params*){
	for i,a in params
		param.=a_index=1?a:" " . a
	click,% param
}

clipWait(params*){
	clipWait,% params[1],% params[2]
	return errorlevel
}

control(subCommand,params*){
	control,% subCommand,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6]
	return errorlevel
}

controlClick(params*){
	controlClick,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8]
	return errorlevel
}

controlFocus(params*){
	controlFocus,% params[1],% params[2],% params[],% params[4],% params[5]
	return errorlevel
}

controlGet(byref outputVar,subCommand,params*){
	controlGet,outputVar,% subCommand,% params[1],% params[2],% params[],% params[4],% params[5],% params[6]
	return errorlevel	
}

controlGet2(subCommand,params*){
	controlGet,outputVar,% subCommand,% params[1],% params[2],% params[],% params[4],% params[5],% params[6]
	return {out:outputVar,errorlevel:errorlevel}
}

controlGetFocus(byref outputVar,params*){
	controlGetFocus,outputVar,% params[1],% params[2],% params[3],% params[4]
	return errorlevel
}

controlGetFocus2(params*){
	controlGetFocus,outputVar,% params[1],% params[2],% params[3],% params[4]
	return {out:outputVar,errorlevel:errorlevel}
}

controlGetPos(byref x:="",byref y:="",byref width:="",byref height:="",params*){
	controlGetPos,x,y,width,height,% params[1],% params[2],% params[3],% params[4],% params[5]
}

controlGetPos2(params*){
	controlGetPos,x,y,width,height,% params[1],% params[2],% params[3],% params[4],% params[5]
	return {x:x,y:y,width:width,height:height}
}

controlGetText(byref outputVar,params*){
	controlGetText,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}

controlGetText2(params*){
	controlGetText,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
	return {out:outputVar,errorlevel:errorlevel}
}

controlMove(control,x,y,width,height,params*){
	controlMove,% control,x,y,width,height,% params[1],% params[2],% params[3],% params[4]
	return errorlevel
}

controlSend(params*){
	controlSend,% params[1],% params[2],% params[4],% params[5],% params[6]
	return errorlevel
}

controlSendRaw(params*){
	controlSendRaw,% params[1],% params[2],% params[4],% params[5],% params[6]
	return errorlevel
}

controlSetText(params*){
	controlSetText,% params[1],% params[2],% params[4],% params[5],% params[6]
	return errorlevel
}

coordMode(targetType,relativeTo:=""){
	coordMode,% targetType,% relativeTo
}

critical(onOffNumeric:=""){
	critical,% onOffNumeric
}

detectHiddenText(onOff){
	critical,% onOff
}

detectHiddenWindows(onOff){
	detectHiddenWindows,% onOff
}

drive(subCommand,params*){
	drive,% subCommand,% params[1],% params[2]
	return errorlevel
}

driveGet(byref outputVar,subCommand,value:=""){
	driveGet,outputVar,% subCommand,% value
	return errorlevel
}

driveGet2(subCommand,value:=""){
	driveGet,outputVar,% subCommand,% value
	return {out:outputVar,errorlevel:errorlevel}
}

driveSpaceFree(byref outputVar,path){
	driveSpaceFree,outputVar,path)
}

driveSpaceFree2(path){
	driveSpaceFree,outputVar,path)
	return {out:outputVar}
}

edit(){
	edit
}

envAdd(byref outputVar,value,timeUnits:=""){
	envAdd,outputVar,value,% timeUnits
}

envAdd2(value,timeUnits:=""){
	envAdd,outputVar,value,% timeUnits
	return {out:outputVar}
}

envGet(byref outputVar,envVarName){
	envGet,outputVar,% envVarName
}

envGet2(envVarName){
	envGet,outputVar,% envVarName
	return {out:outputVar}
}

envSet(envVar,value){
	envSet,% envVar,% value
}

envSub(byref outputVar,value,timeUnits:=""){
	envSub,outputVar,% value,% timeUnits
}

envSub2(value,timeUnits:=""){
	envSub,outputVar,% value,% timeUnits
	return {out:outputVar}
}

envUpdate(){
	envUpdate
}

fileAppend(params*){
	fileAppend,% params[1],% params[2],% params[3]
	return errorlevel
}

fileCopy(sourcePattern,destPattern,overwrite:=""){
	fileCopy,% sourcePattern,% destPattern,% overwrite
	return errorlevel
}

fileCopyDir(source,dest,overwrite:=""){
	fileCopyDir,% source,% desk,% overwrite
	return errorlevel
}

fileCreateDir(dirName){
	fileCreateDir,% dirName
	return errorlevel
}

fileCreateShortcut(target,linkFile,params*){
	fileCreateShortcut,% target,% linkFile,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7]
	return errorlevel
}

fileDelete(filePattern){
	fileDelete,% filePattern
	return errorlevel
}

fileEncoding(encoding:=""){
	fileEncoding,% encoding
}

fileGetAttrib(byref outputVar,fileName:=""){
	fileGetAttrib,outputVar,% fileName
	return errorlevel
}

fileGetAttrib2(fileName:=""){
	fileGetAttrib,outputVar,% fileName
	return {out:outputVar,errorlevel:errorlevel}
}

fileGetShortcut(linkFile,byref outTarget:="",byref outDir:="",byref outArgs:="",byref outDescription:="",byref outIcon:="",byref outIconNum:="",byref outRunState:=""){
	fileGetShortcut,% linkFile,outTarget,outDir,outArgs,outDescription,outIcon,outIconNum,outRunState
	return errorlevel
}

fileGetShortcut2(linkFile){
	fileGetShortcut,% linkFile,outTarget,outDir,outArgs,outDescription,outIcon,outIconNum,outRunState
	return {outTarget:outTarget,outDir:outDir,outArgs:outArgs,outDescription:outDescription,outIcon:outIcon,outIconNum:outIconNum,outRunState:outRunState,errorlevel:errorlevel}
}

fileGetSize(byref outputVar,params*){
	fileGetSize,outputVar,% params[1],% params[2]
	return errorlevel
}

fileGetSize2(params*){
	fileGetSize,outputVar,% params[1],% params[2]
	return {out:outputVar,errorlevel:errorlevel}
}

fileGetTime(byref outputVar,params*){
	fileGetTime,outputVar,% params[1],% params[2]
	return errorlevel
}

fileGetTime2(params*){
	fileGetTime,outputVar,% params[1],% params[2]
	return {out:outputVar,errorlevel:errorlevel}
}

fileGetVersion(byref outputVar,fileName:=""){
	fileGetVersion,outputVar,% fileName
	return errorlevel
}

fileGetVersion2(fileName:=""){
	fileGetVersion,outputVar,% fileName
	return {out:outputVar,errorlevel:errorlevel}
}

fileMove(sourcePattern,destPattern,overwrite:=""){
	fileMove,% sourcePattern,% destPattern,% overwrite
	return errorlevel
}

fileMoveDir(source,dest,flag:=""){
	fileMoveDir,% source,% dest,% flag
	return errorlevel
}

fileRead(byref outputVar,fileName){
	fileRead,outputVar,% fileName
	return errorlevel
}

fileRead2(fileName){
	fileRead,outputVar,% fileName
	return {out:outputVar,errorlevel:errorlevel}
}

fileReadLine(byref outputVar,fileName,lineNum){
	fileReadLine,outputVar,% fileName,% lineNum
	return errorlevel
}

fileReadLine2(fileName,lineNum){
	fileReadLine,outputVar,% fileName,% lineNum
	return {out:outputVar,errorlevel:errorlevel}
}

fileRecycle(filePattern){
	fileRecycle,% filePattern
	return errorlevel
}

fileRecycleEmpty(driveLetter:=""){
	fileRecycleEmpty,% driveLetter
	return errorlevel
}

fileRemoveDir(dirName,recurse:=""){
	fileRemoveDir,% dirName,% recurse
	return errorlevel
}

fileSelectFile(byref outputVar,params*){
	fileSelectFile,outputVar,% params[1],% params[2],% params[3]
	return errorlevel
}

fileSelectFile2(params*){
	fileSelectFile,outputVar,% params[1],% params[2],% params[3]
	return {out:outputVar,errorlevel:errorlevel}
}

fileSelectFolder(byref outputVar,params*){
	fileSelectFolder,outputVar,% params[1],% params[2],% params[3]
	return errorLevel
}

fileSelectFolder2(params*){
	fileSelectFolder,outputVar,% params[1],% params[2],% params[3]
	return {out:outputVar,errorlevel:errorLevel}
}

fileSetAttrib(attributes,params*){
	fileSetAttrib,% attributes,% params[1],% params[2],% params[3]
	return errorlevel
}

fileSetTime(params*){
	fileSetTime,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}

formatTime(byref outputVar,params*){
	formatTime,outputVar,% params[1],% params[2]
}

formatTime2(params*){
	formatTime,outputVar,% params[1],% params[2]
	return {out:outputVar}
}

groupActivate(groupName,mode:=""){
	groupActivate,% groupName,% mode
	return errorlevel
}

groupAdd(groupName,params*){
	groupAdd,% groupName,% params[1],% params[2],% params[3],% params[4],% params[5]
}

groupClose(groupName,mode:=""){
	groupClose,% groupName,% mode
}

groupDeactivate(groupName,mode:=""){
	groupDeactivate,% groupName,% mode
}

; gui()

guiControl(subCommand,controlID,value:=""){
	guiControl,% subCommand,% controlID,% value
	return errorlevel
}

guiControlGet(byref outputVar,params*){
	guiControlGet,outputVar,% params[1],% params[2],% params[3]
	return errorlevel
}

guiControlGet2(params*){
	guiControlGet,outputVar,% params[1],% params[2],% params[3]
	return {out:outputVar,errorlevel:errorlevel}
}

hotkey(params*){
	hotkey,% params[1],% params[2],% params[3]
	return errorlevel
}

ifMsgBox(buttonName){
	ifMsgBox,% buttonName
		return 1
	return 0
}

imageSearch(byref x,byref y,x1,y1,x2,y2,imageFile){
	imageSearch,x,y,x1,y1,x2,y2,% imageFile
	return errorlevel
}

imageSearch2(x1,y1,x2,y2,imageFile){
	imageSearch,x,y,x1,y1,x2,y2,% imageFile
	return {x:x,y:y,errorlevel:errorlevel}
}

iniDelete(fileName,section,key:=""){
	iniDelete,% fileName,% section,% key
	return errorlevel
}

iniRead(byref outputVar,fileName,params*){
	switch params.count() {
		case 0:
			iniRead,outputVar,% fileName
		case 1:
			iniRead,outputVar,% fileName,% params[1]
		case 2:
		case 3:
			iniRead,outputVar,% fileName,% params[1],% params[2],% params[3]
		default:
			throw params.count() . " parameters passed, expected 0-3"
	}
}

iniRead2(fileName,params*){
	switch params.count() {
		case 0:
			iniRead,outputVar,% fileName
		case 1:
			iniRead,outputVar,% fileName,% params[1]
		case 2:
		case 3:
			iniRead,outputVar,% fileName,% params[1],% params[2],% params[3]
		default:
			throw params.count() . " parameters passed, expected 0-3"
	}
	return {out:outputVar}
}

iniWrite(value,fileName,section,key:=""){
	iniWrite,% value,% fileName,% section,% key
	return errorlevel
}

input(byref outputVar:="",params*){
	input,outputVar,% params[1],% params[2],% params[3]
	return errorlevel
}

input2(params*){
	input,outputVar,% params[1],% params[2],% params[3]
	return {out:outputVar,errorlevel:errorlevel}
}

inputBox(byref outputVar,params*){
	inputBox,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8],% params[9],% params[10]
	return errorlevel
}

inputBox2(params*){
	inputBox,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8],% params[9],% params[10]
	return {out:outputVar,errorlevel:errorlevel}
}

keyHistory(){
	keyHistory
}

keyWait(keyName,options:=""){
	keyWait,% keyName,% options
	return errorlevel
}

listHotkeys(){
	listHotkeys
}

listLines(){
	listLines
}

listVars(){
	listVars
}

menu(menuName,subCommand,params*){
	menu,% menuName,% subCommand,% params[1],% params[2],% params[3],% params[4]
	return errorlevel
}

mouseClick(params*){
	mouseClick,% params[1],params[2],params[3],params[4],params[5],% params[6],% params[7]
}

mouseClickDrag(whichButton,x1,y1,x2,y2,params*){
	mouseClickDrag,% whichButton,x1,y1,x2,y2,params[1],% params[2]
}

mouseGetPos(byref x:="",byref y:="",byref win:="",byref control:="",flag:=""){
	mouseGetPos,x,y,win,control,% flag
}

mouseGetPos2(flag:=""){
	mouseGetPos,x,y,win,control,% flag
	return {x:x,y:y,win:win,control:control}
}

mouseMove(x,y,params*){
	mouseMove,x,y,params[1],% params[2]
}

msgBox(params*){
	if(params.count()=1)
		msgBox,% params[1]
	else
		msgbox,% params[1],% params[2],% params[3],% params[4]
}

outputDebug(text){
	outputDebug,text
}

pause(params*){
	pause,% params[1],% params[2]
}

pixelGetColor(byref outputVar,byref x,byref y,mode:=""){
	pixelGetColor,outputVar,x,y,% mode
	return errorlevel
}

pixelGetColor2(mode:=""){
	pixelGetColor,outputVar,x,y,% mode
	return {out:outputVar,x:x,y:y,errorlevel:errorlevel}
}

pixelSearch(byref x,byref y,x1,y1,x2,y2,colorID,params*){
	pixelSearch,x,y,x1,y1,x2,y2,% colorID,params[1],% params[2]
	return errorlevel
}

pixelSearch2(x1,y1,x2,y2,colorID,params*){
	pixelSearch,x,y,x1,y1,x2,y2,% colorID,params[1],% params[2]
	return {x:x,y:y,errorlevel:errorlevel}
}

postMessage(msg,params*){
	postMessage,% msg,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7]
	return errorlevel
}

process(subCommand,params*){
	process,% subCommand,% params[1],% params[2]
	return errorlevel
}

progress(param1,params*){
	progress,% param1,% params[1],% params[2],% params[3],% params[4]
}

random(byref outputVar:="",params*){
	if(!outputVar) ; new seed
		random,,% params[1]
	else
		random,outputVar,% params[1],% params[2]
}

random2(params*){
	random,outputVar,% params[1],% params[2]
	return {out:outputVar}
}

regDelete(keyName,valueName:=""){
	regDelete,% keyName,% valueName
	return errorlevel
}

regRead(byref outputVar,keyName,valueName:=""){
	regRead,outputVar,% keyName,% valueName
	return errorlevel
}

regRead2(keyName,valueName:=""){
	regRead,outputVar,% keyName,% valueName
	return {out:outputVar,errorlevel:errorlevel}
}

regWrite(valueType,keyName,params*){
	regWrite,% valueType,% keyName,% params[1],% params[2]
	return errorlevel
}

reload(){
	reload
}

run(target,workingDir:="",options:="",byref outputVarPID:=""){
	run,% target,% params[1],% params[2],outputVarPID
	return errorlevel
}

run2(target,workingDir:="",options:=""){
	run,% target,% params[1],% params[2],outputVarPID
	return {PID:outputVarPID,errorlevel:errorlevel}
}

runAs(params*){
	runAs,% params[1],% params[2],% params[3]
}

runWait(target,workingDir:="",options:="",byref outputVarPID:=""){
	runWait,% target,% params[1],% params[2],outputVarPID
	return errorlevel
}

runWait2(target,workingDir:="",options:=""){
	runWait,% target,% params[1],% params[2],outputVarPID
	return {PID:outputVarPID,errorlevel:errorlevel}
}

send(keys){
	send,% keys
}

sendEvent(keys){
	sendEvent,% keys
}

sendInput(keys){
	sendInput,% keys
}

sendLevel(level){
	sendLevel,% level
}

sendMessage(msg,params*){
	postMessage,msg,params[1],params[2],% params[3],% params[4],% params[5],% params[6],% params[7],params[8]
	return errorlevel
}

sendMode(mode){
	sendMode,% mode
}

sendPlay(keys){
	sendPlay,% keys
}

sendRaw(keys){
	sendRaw,% keys
}

setBatchLines(param){
	setBatchLines,% param
}

setCapsLockState(state:=""){
	setCapsLockState,% state
}

setControlDelay(delay){
	setControlDelay,% delay
}

setDefaultMouseSpeed(speed){
	setDefaultMouseSpeed,% speed
}

setKeyDelay(params*){
	setKeyDelay,params[1],params[2],% params[3]
}

setMouseDelay(delay,play:=""){
	setMouseDelay,delay,% play
}

setNumLockState(state:=""){
	setNumLockState,% state
}

setRegView(regView){
	setRegView,% regView
}

setScrollLockState(state:=""){
	setScrollLockState,% state
}

setStoreCapsLockMode(onOff){
	setStoreCapsLockMode,% onOff
}

setTimer(params*){
	setTimer,% params[1],% params[2],% params[3]
}

setTitleMatchMode(param){
	setTitleMatchMode,% param
}

setWinDelay(delay){
	setWinDelay,delay
}

setWorkingDir(dirName){
	setWorkingDir,% dirName
}

shutdown(code){
	shutdown,% code
}

sleep(delayInMs){
	sleep delayInMs
}

sort(byRef varName,options:=""){
	sort,varName,% options
}

sort2(options:=""){
	sort,varName,% options
	return {out:varName}
}

soundBeep(params*){
	soundBeep,params[1],params[2]
}

soundGet(byref outputVar,params*){
	soundGet,outputVar,% params[1],% params[2],params[3]
	return errorlevel
}

soundGet2(params*){
	soundGet,outputVar,% params[1],% params[2],params[3]
	return {out:outputVar,errorlevel:errorlevel}
}

soundGetWaveVolume(byref outputVar,deviceNumber:=""){
	soundGetWaveVolume,outputVar,% deviceNumber
	return errorlevel
}

soundGetWaveVolume2(deviceNumber:=""){
	soundGetWaveVolume,outputVar,% deviceNumber
	return {out:outputVar,errorlevel:errorlevel}
}

soundPlay(fileName,wait:=""){
	soundPlay,% fileName,% wait
	return errorlevel
}

soundSet(newSetting,params*){
	soundSet,% newSetting,% params[1],% params[],% params[3]
	return errorlevel
}

soundSetWaveVolume(percent,deviceNumber:=""){
	soundSetWaveVolume,percent,% deviceNumer
	return errorlevel
}

splashImage(params*){
	splashImage,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6]
}

splashTextOff(){
	splashTextOff
}

splashTextOn(params*){
	splashTextOn,% params[1],% params[2],% params[3],% params[4]
}

splitPath(inputVar,byref outFileName:="",byref outDir:="",byref outExt:="",byref outNameNoExt:="",byref outDrive:=""){
	splitPath,inputVar,outFileName,outDir,outExt,outNameNoExt,outDrive
}

splitPath2(inputVar){
	splitPath,inputVar,outFileName,outDir,outExt,outNameNoExt,outDrive
	return {fileName:outFileName,dir:outDir,ext:outExt,nameNoExt:outNameNoExt,drive:outDrive}
}

statusBarGetText(byref outputVar,params*){
	statusBarGetText,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}

statusBarGetText2(params*){
	statusBarGetText,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
	return {out:outputVar,errorlevel:errorlevel}
}

statusBarWait(params*){
	statusBarWait,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8]
	return errorlevel
}

stringCaseSense(onOffLocale){
	stringCaseSense,% onOffLocale
}

stringLower(byref outputVar,byref inputVar,t:=""){
	stringLower,outputVar,% inputVar,% t
}

stringLower2(byref inputVar,t:=""){
	stringLower,outputVar,% inputVar,% t
	return {out:outputVar}
}

stringUpper(byref outputVar,byref inputVar,t:=""){
	stringUpper,outputVar,% inputVar,% t
}

stringUpper2(byref inputVar,t:=""){
	stringUpper,outputVar,% inputVar,% t
	return {out:outputVar}
}

suspend(mode:=""){
	suspend,% mode
}

sysGet(byref outputVar,subCommand,value:=""){
	global
	sysGet,outputVar,% subCommand,% value
}

sysGet2(subCommand,value:=""){
	sysGet,outputVar,% subCommand,% value
	if(subCommand="monitor" || subCommand="monitorWorkArea"){
		return {left:outputVarLeft,top:outputVarTop,right:outputVarRight,bottom:outputVarBottom}
	}
	return {out:outputVar}
}

thread(subcommand,params*){
	thread,% subCommand,% params[1],% params[2]
}

throw(expression:=""){
	throw,% expression
}

toolTip(params*){
	tooltip,% params[1],% params[2],% params[3],% params[4]
}

transform(byref outputVar,subCommand,value1,value2:=""){
	transform,outputVar,% subCommand,% value1,% value2
}

transform2(subCommand,value1,value2:=""){
	transform,outputVar,% subCommand,% value1,% value2
	return {out:outputVar}
}

trayTip(params*){
	trayTip,% params[1],% params[2],% params[3],% params[4]
}

urlDownloadToFile(url,fileName){
	urlDownloadToFile,% url,% fileName
	return errorlevel
}

winActivate(params*){
	winActivate,% params[1],% params[2],% params[3],% params[4]
}

winActivateBottom(params*){
	winActivateBottom,% params[1],% params[2],% params[3],% params[4]
}

winClose(params*){
	winClose,% params[1],% params[2],% params[3],% params[4],% params[5]
}

winGet(byref outputVar,params*){
	global
	winGet,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
}

winGet2(params*){
	winGet,outputVar,% params[1],% params[2],% params[3],% params[4],% params[5]
	if(params[1]="list"){
		out:=[]
		loop,% outputVar
			out.push(outputVar%a_index%)
		return out
	}
	return {out:outputVar}
}

winGetActiveStats(byref title,byref width,byref height,byref x,byref y){
	winGetActiveStats,title,width,height,x,y
}

winGetActiveStats2(){
	winGetActiveStats,title,width,height,x,y
	return {title:title,width:width,height:height,x:x,y:y}
}

winGetActiveTitle(byref outputVar){
	winGetActiveTitle,outputVar
}

winGetActiveTitle2(){
	winGetActiveTitle,outputVar
	return {out:outputVar}
}

winGetClass(byref outputVar,params*){
	winGetClass,outputVar,% params[1],% params[2],% params[3],% params[4]
}

winGetClass2(params*){
	winGetClass,outputVar,% params[1],% params[2],% params[3],% params[4]
	return {out:outputVar}
}

winGetPos(byref x:="",byref y:="",byref width:="",byref height:="",params*){
	winGetPos,x,y,width,height,% params[1],% params[2],% params[3],% params[4]
}

winGetPos2(params*){
	winGetPos,x,y,width,height,% params[1],% params[2],% params[3],% params[4]
	return {x:x,y:y,width:width,height:height}
}

winGetText(byref outputVar,params*){
	winGetText,outputVar,% params[1],% params[2],% params[3],% params[4]
}

winGetText2(params*){
	winGetText,outputVar,% params[1],% params[2],% params[3],% params[4]
	return {out:outputVar}
}

winGetTitle(byref outputVar,params*){
	winGetTitle,outputVar,% params[1],% params[2],% params[3],% params[4]
}

winGetTitle2(params*){
	winGetTitle,outputVar,% params[1],% params[2],% params[3],% params[4]
	return {out:outputVar}
}

winHide(params*){
	winHide,% params[1],% params[2],% params[3],% params[4]
}

winKill(params*){
	winKill,% params[1],% params[2],% params[3],% params[4],% params[5]
}

winMaximize(params*){
	winMaximize,% params[1],% params[2],% params[3],% params[4]
}

winMenuSelectItem(winTitle,winText,menu,params*){
	winMenuSelectItem,% winTitle,% winText,% menu,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8]
	return errorlevel
}

winMinimize(params*){
	winMinimize,% params[1],% params[2],% params[3],% params[4]
}

winMinimizeAll(){
	winMinimizeAll
}

winMinimizeAllUndo(){
	winMinimizeAllUndo
}

winMove(params*){
	winMove,% params[1],% params[2],% params[3],% params[4],% params[5],% params[6],% params[7],% params[8]
}

winRestore(params*){
	winRestore,% params[1],% params[2],% params[3],% params[4]
}

winSet(subCommand,value,params*){
	winSet,% subCommand,% value,% params[1],% params[2],% params[3],% params[4]
}

winSetTitle(params*){
	winSetTitle,% params[1],% params[2],% params[3],% params[4],% params[5]
}

winShow(params*){
	winShow,% params[1],% params[2],% params[3],% params[4]
}

winWait(params*){
	winWait,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}

winWaitActive(params*){
	winWaitActive,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}

winWaitClose(params*){
	winWaitClose,% params[1],% params[2],% params[3],% params[4],% params[5]
}

winWaitNotActive(params*){
	winWaitNotActive,% params[1],% params[2],% params[3],% params[4],% params[5]
	return errorlevel
}
