# VM Automations
Few command line script written to automate installation on Virtual machine which is using ubuntu & automate new installation of Raspberry PI.
Basically this script is written for internal use, but you are reading this & interested in same experiment, you can freely use this.

## Case
We are using ProxMox OS for virtualization platform on powerful server configuration & running Virtual Machines inside it for regular use. 
Raspberry PI is used as thin client for remote desktop. So basically idea is prepare desktop less office. Only Monitor, keyboard & mouse in front of you.

There are 2 parts for desktopless machines
* [Init-PI](init-pi)
* [Init-VM](init-vm)

## init-pi
Prepare Rspberry-Pi as RDP client.
This script install xfreerdp-x11. Purpose to use machine remotely. We choose xfreerdp among many other options & it works very well. 
Open [Init-PI](init-pi) for more references.

## init-vm
This is script is written for uses with ubuntu. You can try this with any other debian OS. It installs all necessory packages for regular use by developer, like IDE, FTP, SSH, communication & design tools etc.

## pfc
Its just for internal use. We have regular folder structure to maintain our project on each users machine. 
Project folder creator ([PFC](pfc)) command, just creates project folder & all necessory folders in user's home directory.
