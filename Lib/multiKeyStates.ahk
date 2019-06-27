; andor: to act as if being checked with ors or ands operands.
;    0 = and, 1 = or
multiKeyStates(keyArray,andor:=0,mode:="P"){
    for i,a in keyArray{
        state:=getKeyState(a,mode)
        statea+=state
        if(!andor && !state)
            return 0
        else if(andor && state)
            return 1
    }
    return !statea?0:1
}