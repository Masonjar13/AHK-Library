#include <Gdip_All>
imageSearchc(ByRef out1, ByRef out2, x1, y1, x2, y2, image, vari=0, trans="",direction=5,debug=0){
    dxoff:=0
    dyoff:=0
    ptok:=Gdip_Startup()
    imageB:=Gdip_CreateBitmapFromFile(image)
    Scrn:=Gdip_Bitmapfromscreen(x1 "|" y1 "|" x2 - x1 "|" y2 - y1)
    if(debug)
        Gdip_SaveBitmapToFile(Scrn, a_now ".png")
    Errorlev:=Gdip_ImageSearch(Scrn,imageB,tempxy,0,0,0,0,vari,trans,direction)
    Gdip_DisposeImage(Scrn)
    Gdip_DisposeImage(imageB)
    Gdip_Shutdown(ptok)
    if(Errorlev > 0)
    {
        out:=StrSplit(tempxy,"`,")
        out1:=out[1] + x1 - dxoff
        out2:=out[2] + y1 - dyoff
        return % Errorlev
    }
    return 0
}