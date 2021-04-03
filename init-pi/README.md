# Prepare Raspberry-Pi as Remote desktop thin client

### Commands:
Finish setup with an update.
* Run command in terminal
```
sudo apt-get update
sudo apt-get upgrade
apt install xinit openbox  python-qt4 python-configparser python-urllib3 x11-xserver-utils lxterminal freerdp2-x11 xscreensaver alsa-utils pulseaudio git arandr
```
OR 
* Automate with below command

    `wget https://raw.githubusercontent.com/tycheventures/vm-automations/main/init-pi/init-pi.sh && sudo chmod +x init-pi.sh && bash init-pi.sh`

### Reference links:

   * https://www.youtube.com/watch?v=jwd1-P2p-Bk
   * https://www.youtube.com/watch?v=cqxayan4FDU&t=76s

# RDP clients reference:

* ### Raspbian
  * Remina for RDP.
  * x2Go client-linux.
  * Xfreerdp-2
> https://coldnorthadmin.com/posts/maas_proxmox_power/
> https://www.youtube.com/watch?v=cqxayan4FDU
> https://www.youtube.com/watch?v=lFq4EsqpfaE

* ### Raspbian
  * RDP (Thin Client)

* ### Windows I0T
* ### FreeRDP 
> https://www.youtube.com/watch?v=3wuOWnbCKZ8

* ### RPI (Thin Client)
	> https://parsec.app/	
	> https://dl.armtc.net/	
	> https://rpitc.blogspot.com/
  > https://raspberrypi.stackexchange.com/questions/106428/rdp-from-rpi-to-windows-10-safe-room

* ### WOA
  > https://github.com/WOA-Project/WOA-Deployer-Rpi
  > https://www.youtube.com/watch?v=GD7J9VyxSTg&t=61s
  > https://github.com/WOA-Project/WOA-Deployer
  > 
* ### ThinLInx (thin client)
  > https://hackaday.com/2015/08/16/new-version-of-raspberry-pi-thin-client/
  > https://openthinclient.com/de/download-openthinclient/
  > https://rpitc.blogspot.coms
  > http://thinlinx.com/
  > https://rpitc.blogspot.com/
 
* ### RDPGUI(ThinIC)
  > https://www.youtube.com/watch?v=3wuOWnbCKZ8	






