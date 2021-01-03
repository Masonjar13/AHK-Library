/* Written by Masonjar13

	Perform binary search on array.

	Parameters:
---------------
	arr: array to search
	
	match: match to find
	
	r: array length
	
	l (optional): left starting position
	
	return: arr element matched
---------------

	Example:
------------
arr:=[200,500,1050,20000]
msgbox % binSearch(arr,arr[3],arr.length())
------------

*/

binSearch(arr,match,r,l:=0){
	return arr[mid:=(l+r)//2]=match?mid
			:arr[mid]>match?binSearch(arr,match,mid-1,l)
			:arr[mid]<match?binSearch(arr,match,r,mid+1)
			:-1
}