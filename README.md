# Cisco Login Banner Mass Change Script

Use: Execute banner_list.sh,  ./banner_list.sh

# Description for initial version:

This is a script to update the login banner across many Cisco switches. It could be changed slightly to execute almost 
any command but I will put out a more generic version for that purpose. 

This first version uses an expect script to make the switch changes and a bash script to execute the changes on a list of switches.
This version is specifically logging in via Telnet but can easily be changed for ssh, in a future version I will upload 
a script for SSH as well. The current version is also setup for Cisco privilege level 15, very simple to change this if needed.


Requirements:<br>
-> A Linux machine (Have not tested on Linux Subsystem for Windows but it should work)<br>
-> The 'expect' package <br>
          -- Use apt-get install expect for Debian/Ubuntu<br>
          -- For CentOS/RHEL add the EPEL repo and run yum install expect
          <br><br>
Future plans:<br>
-> Make a PowerShell version? And probably charge a ton of money for it? Sure<br>
-> Create version for SSH<br>
-> Create various versions for different privilege levels
