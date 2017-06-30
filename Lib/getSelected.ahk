getSelected(){
    cO:=clipboardAll
    clipboard:=
    send ^c
    clipWait
    path:=clipboard
    clipboard:=cO
    return path
}