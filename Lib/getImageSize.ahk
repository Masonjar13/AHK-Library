/* Written by Masonjar13

	Retrieves the image width and height of an image file.

	Parameters:
---------------
	imagePath: path to image file
	
	return: object
		width
		height
---------------

	Example:
------------
iSize:=getImageSize(a_desktop . "\image.png")
msgbox % iSize.width "x" iSize.height
------------

*/

getImageSize(imagePath){
	splitPath,imagePath,fN,fD

	oS:=comObjCreate("Shell.Application")
	oF:=oS.namespace(fD?fD:a_workingDir)
	oFn:=oF.parseName(fD?fN:imagePath)
	size:=strSplit(oFn.extendedProperty("Dimensions"),"x"," ?" chr(8234) chr(8236))

	return {width: size[1],height: size[2]}
}