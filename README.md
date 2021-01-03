# AHK-Library
[Most of my personal AHK stdlib.](https://autohotkey.com/boards/viewtopic.php?p=88651#p88651)


## Functions
| Function | Description |
|--------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [binSearch()](Lib/binSearch.ahk) | Performs a binary search on a given index-based object. |
| [borderlessMode()](Lib/borderlessMode.ahk) | Toggles AlwaysOnTop and caption for a specified window (active window, if unspecified). |
| [borderlessMove()](Lib/borderlessMove.ahk) | Enables click-and-drag movement for windows without captions. |
| [checkSession()](Lib/checkSession.ahk) | Creates a callback for user session messages, such as logging off or locking the session. |
| [commaFormat()](Lib/commaFormat.ahk) | Performs a comma format on numbers, eg., `123456789.12345 > 123,456,789.12345`. |
| [compileScript()](Lib/compileScript.ahk) | **Requires:** AHK to be installed on the system.<br><br>Allows compilation of a script from a script, which could be self-compilation. |
| [dpiOffset()](Lib/dpiOffset.ahk) | Adds DPI offset to the given value, based on the current system DPI setting. |
| [externalIP\[_old\]()](Lib/externalIP.ahk) | Retrieves the visible information of a given IP. If no IP is given, the information for the external IP of the local machine is retrieved. |
| [fileUnblock()](Lib/fileUnblock.ahk) | Removes the "file came from another computer" security flag on a specified file. |
| [getCurrentTime()](Lib/getCurrentTime.ahk) | **Requires:** [urlDownloadToVar()](Lib/urlDownloadToVar.ahk), [strToLower()](Lib/strToLower.ahk)<br><br>Retrieves the current time of the specified [region of a] country. Utilizing the boolean `countryIsTimezone` parameter, the `country` parameter may be a timezone acronym instead. |
| [getImageSize()](Lib/getImageSize.ahk) | Returns the image resolution (width and height) of a given image file. |
| [getPosFromAngle()](Lib/getPosFromAngle.ahk) | Calculates and returns a coordinate based off of a given coordinate, length/distance in pixels, and angle. |
| [getSelected()](Lib/getSelected.ahk) | Returns the path[s] of selected file[s] when using a file explorer. |
| [getUTCOffset()](Lib/getUTCOffset.ahk) | **Requires:** [urlDownloadToVar()](Lib/urlDownloadToVar.ahk), [strToLower()](Lib/strToLower.ahk)<br><br>Retrieves the UTC offset of a timezone. |
| [getWinClientSize()](Lib/getWinClientSize.ahk) | Returns the size (width and height) of the client area of a specified window handle. |
| [hToMs()](Lib/hToMs.ahk) | Converts hours into milliseconds. |
| [hwndHung()](Lib/hwndHung.ahk) | Checks if a window handle is hung/frozen. |
| [ifContains()](Lib/ifContains.ahk) | Function wrap for [if var contains matchList](https://autohotkey.com/docs/commands/IfIn.htm). |
| [ifIn()](Lib/ifIn.ahk) | Function wrap for [if var in matchList](https://autohotkey.com/docs/commands/IfIn.htm). |
| [imageSearchc()](Lib/imageSearchc.ahk) | **Requires:** [Gdip_All](Required-Libraries/Gdip_All.ahk)<br><br>GDI based image search, to replace [ImageSearch](https://autohotkey.com/docs/commands/ImageSearch.htm). |
| [internetConnected()](Lib/internetConnected.ahk) | Pings given URL (Google if unspecified) to check connection. |
| [invertCaseChr()](Lib/invertCaseChr.ahk) | Inverts the case of a given character. |
| [invertCaseStr()](Lib/invertCaseStr.ahk) | Inverts the case of a given string. |
| [is64bitExe()](Lib/is64bitExe.ahk) | Checks if a specified executable is 64-bit. |
| [isAlpha()](Lib/isAlpha.ahk) | Wrap for [if var is alpha](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isAlphaNum()](Lib/isAlphaNum.ahk) | Wrap for [if var is alphaNum](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isBetween()](Lib/isBetween.ahk) | Wrap for [if var is between lowerBound and upperBound](https://autohotkey.com/docs/commands/IfBetween.htm). |
| [isDigit()](Lib/isDigit.ahk) | Wrap for [if var is digit](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isFloat()](Lib/isFloat.ahk) | Wrap for [if var is float](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isHex()](Lib/isHex.ahk) | Wrap for [if var is hex](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isInt()](Lib/isInt.ahk) | Wrap for [if var is int](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isLower()](Lib/isLower.ahk) | Wrap for [if var is lower](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isNum()](Lib/isNum.ahk) | Wrap for [if var is num](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isSpace()](Lib/isSpace.ahk) | Wrap for [if var is space](https://autohotkey.com/docs/commands/IfIs.htm). |
| [isUpper()](Lib/isUpper.ahk) | Wrap for [if var is upper](https://autohotkey.com/docs/commands/IfIs.htm). |
| [lanConnected()](Lib/lanConnected.ahk) | Checks if the local device is connected to a local area network. |
| [msToH()](Lib/msToH.ahk) | Converts milliseconds into hours. |
| [msToM()](Lib/msToM.ahk) | Converts milliseconds into minutes. |
| [msToS()](Lib/msToS.ahk) | Converts milliseconds into seconds. |
| [mToMs()](Lib/mToMs.ahk) | Converts minutes into milliseconds. |
| [multiKeyStates()](Lib/multiKeyStates.ahk) | Allows to check for multiple key states at a time, keeping the return boolean to match getKeyState(). |
| [mouseOverWin()](Lib/mouseOverWin.ahk) | Checks if the mouse is over a specified window. |
| [muteWindow()](Lib/muteWindow.ahk) | **Requires:** [VA](Required-Libraries/VA.ahk)<br><br>Mutes, unmutes, or toggles mute state for a specified window in the volume mixer. |
| [nicRestart()](Lib/nicRestart.ahk) | **Requires:** [nicSetState()](Lib/nicSetState.ahk)<br><br>Disables and re-enables a specified network adapter. |
| [nicSetState()](Lib/nicSetState.ahk) | Enables or disables a specified network adapter. |
| [processExist()](Lib/processExist.ahk) | Wrap for [process, exist](https://autohotkey.com/docs/commands/Process.htm). |
| [processPriority()](Lib/processPriority.ahk) | Returns the priority level of a given process/PID. |
| [rand()](Lib/rand.ahk) | Wrap for [random](https://autohotkey.com/docs/commands/Random.htm). |
| [randStr()](Lib/randStr.ahk) | Generates a random string of a given length, with options to include any combination of lowercase, uppercase, digits, and symbols. |
| [readHotkeys()](Lib/readHotkeys.ahk) | Creates a list of all hotkeys/hotstrings and directives from a script file (from disk, not active). |
| [regExMatchI()](Lib/regExMatchI.ahk) | **Requires:** [strI()](Lib/strI.ahk)<br><br>Performs an inverted (end to start) [regExMatch](https://autohotkey.com/docs/commands/RegExMatch.htm). |
| [regExReplaceI()](Lib/regExReplaceI.ahk) | **Requires:** [strI()](Lib/strI.ahk)<br><br>Performs an inverted (end to start) [regExReplace](https://autohotkey.com/docs/commands/RegExReplace.htm). |
| [setWindowVol()](Lib/setWindowVol.ahk) | **Requires:** [VA](Required-Libraries/VA.ahk)<br><br>Sets the volume for a specified window in the volume mixer. |
| [StdOutStream()](Lib/StdOutStream.ahk) | Creates a callback for all standard output lines of a program. |
| [StdOutToVar()](Lib/StdOutToVar.ahk) | Returns all standard output of a program. |
| [strI()](Lib/strI.ahk) | Inverts a given string. |
| [strReplaceI()](Lib/strReplaceI.ahk) | **Requires:** [strI()](Lib/strI.ahk)<br><br>Performs an inverted (end to start) [strReplace](https://autohotkey.com/docs/commands/StringReplace.htmunction). |
| [strToLower()](Lib/strToLower.ahk) | Wrap for [stringLower](https://autohotkey.com/docs/commands/StringLower.htm). |
| [strToUpper()](Lib/strToUpper.ahk) | Wrap for [stringUpper](https://autohotkey.com/docs/commands/StringLower.htm). |
| [stringify()](Lib/stringify.ahk) | Returns a specified object in the form of a string. |
| [tool()](Lib/tool.ahk) | Creates a tooltip for a specified amount of time. |
| [toolSpeak()](Lib/toolSpeak.ahk) | Speaks a given string. |
| [urlDownloadToFile()](Lib/urlDownloadToFile.ahk) | Downloads a URL resource to a file. |
| [urlDownloadToVar()](Lib/urlDownloadToVar.ahk) | Downloads a URL resource to a variable. |
| [urlFileGetSize()](Lib/urlFileGetSize.ahk) | Retrieves the file size of a URL resource. |
| [winInfo()](Lib/winInfo.ahk) | Returns information about the specified window. |

## Classes
| Class | Description |
|------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [audioRouter](Lib/audioRouter.ahk) | **Requires:** [VA](Required-Libraries/VA.ahk), [Audio Router](https://github.com/audiorouterdev/audio-router/releases)<br><br>Allows using/interacting with Audio Router from AHK. |
| [IEObj](Lib/IEObj.ahk) | Contains an instance of IE via COM, with methods that wrap basic interactions, such as URL navigation. Features extensive error catching. |
| [threadMan](Lib/threadMan.ahk) | **Requires:** [_MemoryLibrary](Required-Libraries/_MemoryLibrary.ahk), [_Struct](Required-Libraries/_Struct.ahk), [AutoHotkey.dll](https://hotkeyit.github.io/v2) (v1 zip download)<br><br>Wraps functionality of AutoHotkey.dll to allow multi-threading with AHK v1.1. |
| [db](Lib/db.ahk) | Base DB class, with methods for reading, writing, and removing key-value pairs to/from a file. |

## Other
| Name | Description |
| ------------------------------------- | --------------------------------------------------------- |
| [functionalAHK](Lib/functionalAHK.ahk) | Wraps all AHK commands, so functions may be used instead. |
