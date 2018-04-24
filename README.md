# AHK-Library
[Most of my personal AHK stdlib.](https://autohotkey.com/boards/viewtopic.php?p=88651#p88651)


## Functions
* [borderlessMode()](Lib/borderlessMode.ahk)
    * **Description**<br>
        Toggles AlwaysOnTop an caption for a specified window (active window, if unspecified).
* [borderlessMove()](Lib/borderlessMove.ahk)
    * **Description**<br>
        Enables click-and-drag movement for windows without captions.
* [checkSession()](Lib/checkSession.ahk)
    * **Description**<br>
        Creates a callback for user session messages, such as logging off or locking the session.
* [commaFormat()](Lib/commaFormat.ahk)
    * **Description**<br>
        Performs a comma format on numbers, eg., `123456789.12345 > 123,456,789.12345`.
* [compileScript()](Lib/compileScript.ahk)
    * **Requirements**<br>
        AHK must be installed on the system.
    * **Description**<br>
        Allows compilation of a script from a script, which could be self-compilation.
* [dpiOffset()](Lib/dpiOffset.ahk)
    * **Description**<br>
        Adds DPI offset to the given value, based on the current system DPI setting.
* [externalIP\[_old\]()](Lib/dpiOffset.ahk)
    * **Description**<br>
        Retrieves the visible information of a given IP. If no IP is given, the information for the external IP of the local machine is retrieved.
* [fileUnblock()](Lib/fileUnblock.ahk)
    * **Description**<br>
        Removes the "file came from another computer" security flag on a specified file.
* [getCurrentTime()](Lib/getCurrentTime.ahk)
    * **Requirements**<br>
    [urlDownloadToVar()](Lib/urlDownloadToVar.ahk)<br>
    [strToLower()](Lib/strToLower.ahk)
    * **Description**<br>
        Retrieves the current time of the specified [region of a] country. Utilizing the boolean `countryIsTimezone` parameter, the `country` parameter may be a timezone acronym instead.
* [getImageSize()](Lib/getImageSize.ahk)
    * **Description**<br>
        Returns the image resolution (width and height) of a given image file.
* [getPosFromAngle()](Lib/getPosFromAngle.ahk)
    * **Description**<br>
        Calculates and returns a coordinate based off of a given coordinate, length/distance in pixels, and angle.
* [getSelected()](Lib/getSelected.ahk)
    * **Description**<br>
        Returns the path[s] of selected file[s] when using a file explorer.
* [getUTCOffset()](Lib/getUTCOffset.ahk)
    * **Requirements**<br>
    [urlDownloadToVar()](Lib/urlDownloadToVar.ahk)<br>
    [strToLower()](Lib/strToLower.ahk)
    * **Description**<br>
        Retrieves the UTC offset of a timezone.
* [getWinClientSize()](Lib/getWinClientSize.ahk)
    * **Description**<br>
        Returns the size (width and height) of the client area of a specified window handle.
* [hourToMil()](Lib/hourToMil.ahk)
    * **Description**<br>
        Converts hours into milliseconds.
* [hwndHung()](Lib/hwndHung.ahk)
    * **Description**<br>
        Checks if a window handle is hung/frozen.
* [ifContains()](Lib/ifContains.ahk)
    * **Description**<br>
        Function wrap for [if var contains matchList](https://autohotkey.com/docs/commands/IfIn.htm).
* [ifIn()](Lib/ifIn.ahk)
    * **Description**<br>
        Function wrap for [if var in matchList](https://autohotkey.com/docs/commands/IfIn.htm).
* [imageSearchc()](Lib/imageSearchc.ahk)
    * **Requirements**<br>
        [Gdip_All](Required-Libraries/Gdip_All.ahk)
    * **Description**<br>
        GDI+ based image search, to replace [ImageSearch](https://autohotkey.com/docs/commands/ImageSearch.htm).
* [internetConnected()](Lib/internetConnected.ahk)
    * **Description**<br>
        Pings given URL (Google if unspecified) to check connection.
* [invertCaseChr()](Lib/invertCaseChr.ahk)
    * **Description**<br>
        Inverts the case of a given character.
* [invertCaseStr()](Lib/invertCaseStr.ahk)
    * **Requirements**<br>
        [invertCaseStr()](Lib/invertCaseStr.ahk)
    * **Description**<br>
        Inverts the case of a given string.
* [is64bitExe()](Lib/is64bitExe.ahk)
    * **Description**<br>
        Checks if a specified executable is 64-bit.
* [isAlpha()](Lib/isAlpha.ahk)
    * **Description**<br>
        Wrap for [if var is alpha](https://autohotkey.com/docs/commands/IfIs.htm).
* [isAlphaNum()](Lib/isAlphaNum.ahk)
    * **Description**<br>
        Wrap for [if var is alphaNum](https://autohotkey.com/docs/commands/IfIs.htm).
* [isBetween()](Lib/isBetween.ahk)
    * **Description**<br>
        Wrap for [if var is between lowerBound and upperBound](https://autohotkey.com/docs/commands/IfBetween.htm).
* [isDigit()](Lib/isDigit.ahk)
    * **Description**<br>
        Wrap for [if var is digit](https://autohotkey.com/docs/commands/IfIs.htm).
* [isFloat()](Lib/isFloat.ahk)
    * **Description**<br>
        Wrap for [if var is float](https://autohotkey.com/docs/commands/IfIs.htm).
* [isHex()](Lib/isHex.ahk)
    * **Description**<br>
        Wrap for [if var is hex](https://autohotkey.com/docs/commands/IfIs.htm).
* [isInt()](Lib/isInt.ahk)
    * **Description**<br>
        Wrap for [if var is int](https://autohotkey.com/docs/commands/IfIs.htm).
* [isLower()](Lib/isLower.ahk)
    * **Description**<br>
        Wrap for [if var is lower](https://autohotkey.com/docs/commands/IfIs.htm).
* [isNum()](Lib/isNum.ahk)
    * **Description**<br>
        Wrap for [if var is num](https://autohotkey.com/docs/commands/IfIs.htm).
* [isSpace()](Lib/isSpace.ahk)
    * **Description**<br>
        Wrap for [if var is space](https://autohotkey.com/docs/commands/IfIs.htm).
* [isUpper()](Lib/isUpper.ahk)
    * **Description**<br>
        Wrap for [if var is upper](https://autohotkey.com/docs/commands/IfIs.htm).
* [lanConnected()](Lib/lanConnected.ahk)
    * **Description**<br>
        Checks if the local device is connected to a local area network.
* [milToHour()](Lib/milToHour.ahk)
    * **Description**<br>
        Converts milliseconds into hours.
* [milToMin()](Lib/milToMin.ahk)
    * **Description**<br>
        Converts milliseconds into minutes.
* [milToSec()](Lib/milToSec.ahk)
    * **Description**<br>
        Converts milliseconds into seconds.
* [minToMil()](Lib/minToMil.ahk)
    * **Description**<br>
        Converts minutes into milliseconds.
* [mouseOverWin()](Lib/mouseOverWin.ahk)
    * **Description**<br>
        Checks if the mouse is over a specified window.
* [muteWindow()](Lib/muteWindow.ahk)
   * **Requirements**<br>
       [VA](Required-Libraries/VA.ahk)
    * **Description**<br>
        Mutes, unmutes, or toggles mute state for a specified window in the volume mixer.
* [nicRestart()](Lib/nicRestart.ahk)
    * **Requirements**<br>
        [nicSetState()](Lib/nicSetState.ahk)
    * **Description**<br>
        Disables and re-enables a specified network adapter.
* [nicSetState()](Lib/nicSetState.ahk)
    * **Description**<br>
        Enables or disables a specified network adapter.
* [processExist()](Lib/processExist.ahk)
    * **Description**<br>
        Wrap for [process, exist](https://autohotkey.com/docs/commands/Process.htm).
* [processPriority()](Lib/processPriority.ahk)
    * **Description**<br>
        Returns the priority level of a given process/PID.
* [rand()](Lib/rand.ahk)
    * **Description**<br>
        Wrap for [random](https://autohotkey.com/docs/commands/Random.htm).
* [randStr()](Lib/randStr.ahk)
    * **Description**<br>
        Generates a random string of a given length, with options to include any combination of lowercase, uppercase, digits, and symbols.
* [regExMatchI()](Lib/regExMatchI.ahk)
    * **Requirements**<br>
        [strI()](Lib/strI.ahk)
    * **Description**<br>
        Performs an inverted (end to start) [regExMatch](https://autohotkey.com/docs/commands/RegExMatch.htm).
* [regExReplaceI()](Lib/regExReplaceI.ahk)
    * **Requirements**<br>
        [strI()](Lib/strI.ahk)
    * **Description**<br>
        Performs an inverted (end to start) [regExReplace](https://autohotkey.com/docs/commands/RegExReplace.htm).
* [setWindowVol()](Lib/setWindowVol.ahk)
   * **Requirements**<br>
       [VA](Required-Libraries/VA.ahk)
   * **Description**<br>
       Sets the volume for a specified window in the volume mixer.
* [StdOutStream()](Lib/StdOutStream.ahk)
    * **Description**<br>
        Creates a callback for all standard output lines of a program.
* [StdOutVar()]](Lib/StdOutVar.ahk)
    * **Description**<br>
        Returns all standard output of a program.
* [strI()](Lib/strI.ahk)
    * **Description**<br>
        Inverts a given string.
* [strReplaceI()](Lib/strReplaceI.ahk)
    * **Requirements**<br>
        [strI()](Lib/strI.ahk)
    * **Description**<br>
        Performs an inverted (end to start) [strReplace](https://autohotkey.com/docs/commands/StringReplace.htm#function).
* [strToLower()](Lib/strToLower.ahk)
    * **Description**<br>
        Wrap for [stringLower](https://autohotkey.com/docs/commands/StringLower.htm).
* [strToUpper()](Lib/strToUpper.ahk)
    * **Description**<br>
        Wrap for [stringUpper](https://autohotkey.com/docs/commands/StringLower.htm).
* [stringify()](Lib/stringify.ahk)
    * **Description**<br>
        Returns a specified object in the form of a string.
* [tool()](Lib/tool.ahk)
    * **Description**<br>
        Creates a tooltip for a specified amount of time.
* [toolSpeak()](Lib/toolSpeak.ahk)
    * **Description**<br>
        Speaks a given string.
* [urlDownloadToFile()](Lib/urlDownloadToFile.ahk)
    * **Description**<br>
        Downloads a URL resource to a file.
* [urlDownloadToVar()](Lib/urlDownloadToVar.ahk)
    * **Description**<br>
        Downloads a URL resource to a variable.
* [urlFileGetSize()](Lib/urlFileGetSize.ahk)
    * **Description**<br>
        Retrieves the file size of a URL resource.
* [winInfo()](Lib/winInfo.ahk)
    * **Requirements**<br>
        [tool()](Lib/tool.ahk)
    * **Description**<br>
        Puts the specified window information onto the clipboard.

## Classes
* [audioRouter](Lib/audioRouter.ahk)
    * **Requirements**<br>
        [VA](Required-Libraries/VA.ahk)<br>
        [Audio Router](https://github.com/audiorouterdev/audio-router/releases)
    * **Description**<br>
        Allows using/interacting with Audio Router from AHK.
* [IEObj](Lib/IEObj.ahk)
    * **Description**<br>
        Contains an instance of IE via COM, with methods that wrap basic interactions, such as URL navigation. Features extensive error catching.
* [threadMan](Lib/threadMan.ahk)
    * **Requirements**<br>
        [_MemoryLibrary](Required-Libraries/_MemoryLibrary.ahk)<br>
        [_Struct](Required-Libraries/_Struct.ahk)<br>
        [AutoHotkey.dll](https://hotkeyit.github.io/v2) (v1 zip download)
    * **Description**<br>
        Wraps functionality of AutoHotkey.dll to allow multi-threading with AHK v1.1.
