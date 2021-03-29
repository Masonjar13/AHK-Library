/* Written by Masonjar13

	Downloads the lastest release from a Github repository.

	Dependencies:
		urlDownloadToVar()
			https://github.com/Masonjar13/AHK-Library/blob/cfd102530c5d1160abbc25699c936b4512a6f860/Lib/urlDownloadToVar.ahk
-----------------

	Parameters:
---------------
	repoName: username and repo name to get the release from
		Format example: Lexikos/AutoHotkey_L
	
	dir (optional): directory to download the release files to
		relative to the working dir (requires trailing backslash (\))
	
	searchText (optional): regex string to only download specific
		release files, default: download all release files
---------------

	Example:
------------
; download latest AHK_L release to working dir
downloadGithubRelease("Lexikos/AutoHotkey_L")

; download latest CHOpt release to working dir\CHOpt, and only 64-bit Windows builds
downloadGithubRelease("GenericMadScientist/CHOpt","CHOpt\","x64.*Windows")
------------

*/

downloadGithubRelease(repoName,dir:="",searchText:=""){
	local
	regExNeedle:="<div class=""d-flex flex-justify-between flex-items-center py-1 py-md-2 Box-body px-2"">\s+<a href=""\K[^""]+"
	latestPg:=urlDownloadToVar("https://github.com/" repoName "/releases/latest")
	hrefO:=[],pos:=1
	loop {
		pos:=regExMatch(latestPg,regExNeedle,href,pos + (href[a_index-1]?strLen(href[a_index-1]):0))
		if (pos) {
			regExMatch(href,"[^\/]+$",fileName)
			regExMatch(fileName,searchText,foundText)
			if ((!searchText) || (searchText && regExMatch(fileName,searchText))) {
				hrefO.push({"href": href,"name": fileName})
			}
		}
	} until (!pos)
	if (dir && !fileExist(dir)) {
		fileCreateDir,% dir
	}
	for i,a in hrefO {
		urlDownloadToFile,% "https://github.com/" a.href,% dir a.name
	}
}
