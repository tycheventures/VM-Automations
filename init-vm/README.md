# Install.sh
  this file use for to install xrdp and varius types of softwares like google chrome,webinoly etc.
* step1:download install.sh file
* step2:run sh file as sudo ./install.sh

## manually installation of xrdp.
### Commands:
  ** sudo apt-get update
  ** sudo apt-get upgrade
  ** sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils OR sudo apt install xubuntu-desktop
  ** sudo apt install xrdp 
  ** sudo systemctl status xrdp (for testing)
  ** sudo adduser xrdp ssl-cert 
  ** sudo systemctl restart xrdp
  ** Sudo apt install samba	

## manually installation of software.
* Dconf-editor
  >sudo apt-get install dconf-editor
  After that open dconf-editor
  >Goto:org/gnome/shell/extension/dash-to-dock
  And check settings.

* Chrome
  >wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  >sudo apt install ./google-chrome-stable_current_amd64.deb

* Sublime text editor
  >wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  >echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  >sudo apt-get update
  >sudo apt-get install sublime-text

* Webinoly
  >wget -qO weby qrok.es/wy && sudo bash weby 3Sublime text editor

* adobe reader
  >sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engin>
  >wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i38>
  >sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb

* kruler
  >sudo apt-get install -y kruler

* gimp
  >sudo snap install gimp#skype

* skype 
  >wget https://go.skype.com/skypeforlinux-64.deb
  >sudo apt install ./skypeforlinux-64.deb

* slack
  >sudo snap install slack --classic

* opera
  >sudo snap install opera





