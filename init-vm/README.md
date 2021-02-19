# Initialise VM with all basic required packages

## Automated installations
  This file use for to install xrdp and various types of softwares like google chrome,webinoly etc.
* Step 1: Download install.sh file
* Step 2: Run shell file using terminal as sudo ./install.sh

Or You can above things one line of command. Just copy & paste below line in terminal.
`wget -qO init-vm https://raw.githubusercontent.com/tycheventures/vm-automations/main/init-vm/install.sh && sudo chmod +x init-vm && sudo bash init-vm`

## Manually installation
### XRDP configuration Commands:
  ```
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils OR sudo apt install xubuntu-desktop
  sudo apt install xrdp 
  sudo systemctl status xrdp (for testing)
  sudo adduser xrdp ssl-cert 
  sudo systemctl restart xrdp
  sudo apt install samba	
   ```

## Manually installation of software.
* Dconf-editor
  `sudo apt-get install dconf-editor`
  After that open dconf-editor
  `Goto:org/gnome/shell/extension/dash-to-dock`
  And check settings.

* Chrome
  ```
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install ./google-chrome-stable_current_amd64.deb
  ```
* Sublime text editor
  ```
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt-get update
  sudo apt-get install sublime-text
  ```

* Adobe reader
  ```
  sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engin>
  wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i38>
  sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb
  ```
* Kruler
  `sudo apt-get install -y kruler`

* Gimp
  `sudo snap install gimp#skype`

* Skype 
  ```
  wget https://go.skype.com/skypeforlinux-64.deb
  sudo apt install ./skypeforlinux-64.deb
  ```
* Slack
  `sudo snap install slack --classic`

* Opera
  `sudo snap install opera`

* Webinoly
  `wget -qO weby qrok.es/wy && sudo bash weby 3Sublime text editor`
