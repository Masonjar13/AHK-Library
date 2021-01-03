/* Written by Masonjar13

	Retrieves the current time by country/region/timezone in 12-hour format.

	Parameters:
---------------
	country: name of the country

	region: name of the region within the country, if applicable

	countryIsTimezone: changes country parameter to use it as a timezone instead;
			this makes the region parameter useless

	return: object containing time info with the following keys
		hour
		minute
		ampm
		date
---------------

	Example:
------------
dateTime:=getCurrentTime("IST",,1)
msgbox % dateTime.hour ":" dateTime.minute " " dateTime.ampm ", " dateTime.date
------------

*/

; retrieve the current time by country [and region] or timezone
getCurrentTime(country,region:="",countryIsTimezone:=0){
	static regStr:="U)id=""fshrmin"">(\d{1,2}):(\d{1,2})<.*id=""fsampm"">(\w{2})<.*class=""fs-date"">([^<]+)<"
	static regStr2:="U)class=""ctm-hrmn"">(\d{1,2}):(\d{1,2})<.*ctm-ampm"">(\w{2})<.*ctm-date"">([^<]+)<"
	static url:="https://www.timeanddate.com/time/zone/"
	static url2:="https://www.timeanddate.com/time/zones/"
	
	if (countryIsTimezone) {
		regExMatch(urlDownloadToVar(url2 strToLower(country)),regStr2,cT)
		return cT?{hour: cT1,minute: cT2,ampm: cT3,date: cT4}:0
	} else {
		regExMatch(urlDownloadToVar(url country (region?"/" region:"")),regStr,cT)
		return cT?{hour: cT1,minute: cT2,ampm: cT3,date: cT4}:0
	}
}