/* Written by Masonjar13

	Retrieves the UTC offset of a given timezone.

	Parameters:
---------------
	timezone: timezone code
	
	return: object containing offset
		sign: + or -
		hour
		minute
---------------

	Example:
------------
UTCOffset:=getUTCOffset("IST")
nowUTC:=a_nowUTC
if (UTCOffset.sign="+") {
	cTimeM:=(subStr(nowUTC,11,2)+UTCOffset.minute)
	cTimeH:=(subStr(nowUTC,9,2)+UTCOffset.hour)
	if (cTimeM>60) {
		cTimeM-=60
		cTimeH+=1
	}
	cTimeH:=cTimeH>24?cTimeH-24:cTimeH
} else {
	cTimeH:=(subStr(nowUTC,9,2)-UTCOffset.hour)
	cTimeM:=(subStr(nowUTC,11,2)-UTCOffset.minute)
	if (cTimeM<0) {
		cTimeM+=60
		cTimeH-=1
	}
	cTimeH:=cTimeH<0?cTimeH+24:cTimeH
}
msgbox % "Offset: " UTCOffset.sign UTCOffset.hour ":" UTCOffset.minute "`nCurrent time: " format("{1:.2u}:{2:.2u}",cTimeH,cTimeM) "`nCurrent UTC: " subStr(nowUTC,9,2) ":" subStr(nowUTC,11,2)
------------

*/

getUTCOffset(timezone){
	static regStr:="U)UTC Offset:<\/a>[^+-]+([+-])(\d{1,2}):?(\d{1,2})?<"
	static url:="https://www.timeanddate.com/time/zones/"
	
	regExMatch(urlDownloadToVar(url strToLower(timezone)),regStr,cT)
	return cT?{sign: cT1,hour: cT2,minute: (cT3?cT3:0)}:0
}