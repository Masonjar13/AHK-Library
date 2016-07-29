borderlessMode(hwnd="A"){
    winSet,style,^0xC40000 ^alwaysOnTop,% hwnd
    winGetPos,,,winw,,% hwnd
    winMove,A,,,,% winw+5
    winMove,A,,,,% winw
}