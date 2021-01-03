/* Written by Masonjar13

	Calculates coords for a point based on a given point,
	length, and angle.

	Parameters:
---------------
	x1: x coord of starting point
	
	y1: y coord of starting point
	
	len: length (in pixels) from starting point
	
	ang: angle (in degrees) from starting point
---------------

	Example:
------------
getPosFromAngle(100,100,150,157)
msgbox % floor(x) " x " floor(y)
------------

*/

getPosFromAngle(x1,y1,len,ang){
	ang:=(ang-90) * 0.0174532925
	return {"x": x1+len*cos(ang),"y": y1+len*sin(ang)}
}