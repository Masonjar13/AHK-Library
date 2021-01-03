/* Written by SKAN, HotKeyIt, and Sean, modified by Masonjar13

	Open a stream to a stdout of a given batch command.

	Parameters:
---------------
	sCmd: batch command to execute
	
	Callback (optional): function name to call back to each time
		the stream receives output.
		
	return: if callback was omitted, the entire output will be here
---------------

	Example:
------------
StdOutStream("ping 1.1.1.1","toolT")
return

esc::exitApp

toolT(output,index) {
	static sOutput
	sOutput.="`n" index ": " output
	tooltip,% sOutput:=trim(sOutput," `n")
}
------------

*/

; Edited by Masonjar13 to be compatible with 32 and 64-bit (2015)
StdOutStream( sCmd, Callback = "" ) { ; Modified  :  SKAN 31-Aug-2013 http://goo.gl/j8XJXY                             
  Static StrGet := "StrGet"           ; Thanks to :  HotKeyIt         http://goo.gl/IsH1zs                                   
                                      ; Original  :  Sean 20-Feb-2007 http://goo.gl/mxCdn
                                    
  DllCall( "CreatePipe", UIntP,hPipeRead, UIntP,hPipeWrite, UInt,0, UInt,0 )
  DllCall( "SetHandleInformation", UInt,hPipeWrite, UInt,1, UInt,1 )

  if(a_ptrSize=8){
    VarSetCapacity( STARTUPINFO, 104, 0  )      ; STARTUPINFO          ;  http://goo.gl/fZf24
    NumPut( 68,         STARTUPINFO,  0 )      ; cbSize
    NumPut( 0x100,      STARTUPINFO, 60 )      ; dwFlags    =>  STARTF_USESTDHANDLES = 0x100 
    NumPut( hPipeWrite, STARTUPINFO, 88 )      ; hStdOutput
    NumPut( hPipeWrite, STARTUPINFO, 96 )      ; hStdError
    VarSetCapacity( PROCESS_INFORMATION, 32 )  ; PROCESS_INFORMATION  ;  http://goo.gl/b9BaI      
  }else{
    VarSetCapacity( STARTUPINFO, 68, 0  )      ; STARTUPINFO          ;  http://goo.gl/fZf24
    NumPut( 68,         STARTUPINFO,  0 )      ; cbSize
    NumPut( 0x100,      STARTUPINFO, 44 )      ; dwFlags    =>  STARTF_USESTDHANDLES = 0x100 
    NumPut( hPipeWrite, STARTUPINFO, 60 )      ; hStdOutput
    NumPut( hPipeWrite, STARTUPINFO, 64 )      ; hStdError
    VarSetCapacity( PROCESS_INFORMATION, 16 )  ; PROCESS_INFORMATION  ;  http://goo.gl/b9BaI     
  }
  If ! DllCall( "CreateProcess", UInt,0, UInt,&sCmd, UInt,0, UInt,0 ;  http://goo.gl/USC5a
              , UInt,1, UInt,0x08000000, UInt,0, UInt,0
              , UInt,&STARTUPINFO, UInt,&PROCESS_INFORMATION ) 
   Return "" 
   , DllCall( "CloseHandle", UInt,hPipeWrite ) 
   , DllCall( "CloseHandle", UInt,hPipeRead )
   , DllCall( "SetLastError", Int,-1 )     

  hProcess := NumGet( PROCESS_INFORMATION, 0 )                 
  if(a_is64bitOS)
    hThread  := NumGet( PROCESS_INFORMATION, 8 )                      
  else
    hThread  := NumGet( PROCESS_INFORMATION, 4 )                      
  DllCall( "CloseHandle", UInt,hPipeWrite )

  AIC := ( SubStr( A_AhkVersion, 1, 3 ) = "1.0" )                   ;  A_IsClassic 
  VarSetCapacity( Buffer, 4096, 0 ), nSz := 0 
  
  While DllCall( "ReadFile", UInt,hPipeRead, UInt,&Buffer, UInt,4094, UIntP,nSz, Int,0 ) {

   tOutput := ( AIC && NumPut( 0, Buffer, nSz, "Char" ) && VarSetCapacity( Buffer,-1 ) ) 
              ? Buffer : %StrGet%( &Buffer, nSz, "CP850" )

   Isfunc( Callback ) ? %Callback%( tOutput, A_Index ) : sOutput .= tOutput

  }                   
 
  DllCall( "GetExitCodeProcess", UInt,hProcess, UIntP,ExitCode )
  DllCall( "CloseHandle",  UInt,hProcess  )
  DllCall( "CloseHandle",  UInt,hThread   )
  DllCall( "CloseHandle",  UInt,hPipeRead )
  DllCall( "SetLastError", UInt,ExitCode  )

Return Isfunc( Callback ) ? %Callback%( "", 0 ) : sOutput      
}