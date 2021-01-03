/* Written by Masonjar13

	Restart NIC (network interface card).

	Parameters:
---------------
	adapter: name of NIC
---------------

	Example:
------------
nicRestart("Wi-Fi")
------------

*/

nicRestart(adapter){
	runwait,% comspec " /c netsh interface set interface """ adapter """ disable&netsh interface set interface """ adapter """ enable",,hide
}