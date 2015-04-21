#######################################################################################################################

This script generates a random number,
The outbound IP address is gonna be random (depends on the number create previously)
The outbound IP address is gonna change (or not) every time the script is executed. (The time depends on the cron job)

########################################################################################################################

Previuos changes:

Create NAT objects on Gateway (Checkpoint firewall) on expert mode,

	# dynamic_objects -n DYN_ISP_0 -r 0.0.0.0 255.255.255.255 -a
	# dynamic_objects -n DYN_ISP_1 -r 0.0.0.0 0.0.0.0 -a


Create NAT policies in smartdashboard,

Example of rules
_________________________________________________________________________________________________________
|	|_______________ORIGINAL PACKET_________________|_______________TRANSLATED PACKET_______________|
|No 	|SOURCE		|DESTINATION	|SERVICE	|SOURCE		|DESTINATION	|SERVICE	|					
|3	|HOST_INTERNAL	|DYN_ISP_0	|Any		|HOST_IP_0	|= Original	|= Original	|
|4	|HOST_INTERNAL	|DYN_ISP_1	|Any		|HOST_IP_1	|= Original	|= Original	|

########################################################################################################################


Usage:

Create a cron job that executes the script 