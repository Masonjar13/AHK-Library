/* Written by Masonjar13

	GDI+ based alternative to ImageSearch command.
	
	Dependencies:
		Gdip_All
		Gdip_ImageSearch (included in this repository's Gdip_All)
-----------------

	Parameters:
---------------
	byRef out1: variable to store found x position
	
	byRef out2: variable to store found y position
	
	x1: top-left x coord of search area
	
	y1: top-left y coord of search area
	
	x2: bottom-right x coord of search area
	
	y2: bottom-right y coord of search area
	
	image: path to image file to search the screen for
	
	vari (optional): variation level (0-255)
	
	trans (optional): hexadecimal color value to treat as transparent
	
	direction (optional): direction to search
		Vertical preference:
		1 = top->left->right->bottom (matches top-left pixel)
		2 = bottom->left->right->top (matches bottom-left pixel)
		3 = bottom->right->left->top (matches bottom-right pixel)
		4 = top->right->left->bottom (matches top-right pixel)
		Horizontal preference:
		5 = left->top->bottom->right (matches top-left pixel) [default]
		6 = left->bottom->top->right (matches bottom-left pixel)
		7 = right->bottom->top->left (matches bottom-right pixel)
		8 = right->top->bottom->left (matches top-right pixel)
	
	debug (optional): save the screen image to the working directory
	
	return: 1 or 0, if match was found or not found
---------------

	Example:
------------
sErrLev:=imageSearchc(fx,fy,0,0,a_screenWidth,a_screenHeight,a_desktop "\image.png")
msgbox % sErrLev "`n" fx "x" fy
------------

*/

#include <Gdip_All>

imageSearchc(byRef out1,byRef out2,x1,y1,x2,y2,image,vari:=0,trans:="",direction:=5,debug:=0){
	static ptok:=gdip_startup()
	imageB:=gdip_createBitmapFromFile(image)
	scrn:=gdip_bitmapfromscreen(x1 "|" y1 "|" x2 - x1 "|" y2 - y1)
	if(debug)
		gdip_saveBitmapToFile(scrn,a_now ".png")
	errorlev:=gdip_imageSearch(scrn,imageB,tempxy,0,0,0,0,vari,trans,direction)
	gdip_disposeImage(scrn)
	gdip_disposeImage(imageB)

	if (errorlev) {
		out:=strSplit(tempxy,"`,")
		out1:=out[1] + x1
		out2:=out[2] + y1
		return % errorlev
	}
	return 0
}
