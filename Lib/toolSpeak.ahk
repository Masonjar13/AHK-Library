/* Written by Masonjar13

	Speaks given string/TTS.

	Parameters:
---------------
	str: string to speak
	
	wait (optional): wait for speech to finish (1) or return immediately (0)
	
	return: given string (for inline debugging)
---------------

	Example:
------------
toolSpeak("Hello World",1)
------------

*/

toolSpeak(str,wait:=0){
	static tts:=comObjCreate("SAPI.SpVoice")
	tts.speak(str,wait?2:3)
	return str
}