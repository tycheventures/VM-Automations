# Project Folder Creator
Its just for internal use. We have regular folder structure to maintain our project on each users machine. Project folder creator (PFC) command, just creates project folder & all necessory folders in user's home directory.

## For Linux

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

## For Windows

* Step 1: Download pfc.bat file.
* Step 2: Goto windows setting > about > advanced system settings and click on environment variables.
* Step 3: Edit user variables path and add your pfc.bat file location.


![image](https://github.com/tycheventures/VM-Automations/assets/74714812/1e62acf6-e76e-4790-a1ac-815b3e4bc0a8)


* Step 4: Edit System variable and add new variable as a **workdir ** and add path of where to make work directory


![image](https://github.com/tycheventures/VM-Automations/assets/74714812/c5d9a395-590c-46b9-b924-3837160b1e32)


* Step 5: Open cmd and execute command: **pcf**



