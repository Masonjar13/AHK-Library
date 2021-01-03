/* Written by Masonjar13

	Set NIC (network interface card) state.

	Parameters:
---------------
	adapter: name of NIC
	
	state: 0 - disabled, 1 - enabled
---------------

	Example:
------------
nicSetState("Wi-Fi",1)
------------

*/

nicSetState(adapter,state){
	runwait,% "netsh interface set interface """ adapter """ " (state?"enable":"disable"),,hide
}