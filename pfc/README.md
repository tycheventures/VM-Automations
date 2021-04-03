# Project Folder Creator
Its just for internal use. We have regular folder structure to maintain our project on each users machine. Project folder creator (PFC) command, just creates project folder & all necessory folders in user's home directory.

### Automated installation of pfc
* Copy link and paste into terminal

` wget -qO pfc https://raw.githubusercontent.com/tycheventures/vm-automations/main/pfc/pfc && sudo mv pfc /usr/bin/ && sudo chmod +x /usr/bin/pfc` 
	
* Then run `pfc` and enter folder name. Use projects domain name as folder name.

### Manually installation of pfc

* Step 1: Download file and open in terminal.
* Step 2: Copy file and save in /usr/bin/
	 `sudo cp pfc /usr/bin/` 
* Step 3: Change file permission
	* Goto directory 
		` cd /usr/bin/ `
	* Change permission
		` chmod +x pfc `
* Step 4: Run pfc and enter folder name.
