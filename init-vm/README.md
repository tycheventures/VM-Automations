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

* npm
  `npm install -g npm`
  
* composer
  ```
  sudo apt install php-cli unzip
  cd ~
  curl -sS https://getcomposer.org/installer -o composer-setup.php
  HASH=`curl -sS https://composer.github.io/installer.sig`
  php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php');   } echo PHP_EOL;"
  sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

* Webinoly
  `wget -qO weby qrok.es/wy && sudo bash weby 3Sublime text editor`

## Xrdp popup showing

XRDP – New “AxRDP – New “Authentication Required…” Popup showing up in Ubuntu 19uthentication Required…” Popup showing up in Ubuntu 19.04
#### Issue:
Always ask for authentication
  * Go to administrator mode. Sudo -s  
  * cd /etc/polkit-1/localauthority/50-local.d/
  * create file
    * cat > 45-allow-colord.pkla 
  * edit file
    * nano 45-allow-colord.pkla 
  * pest code

```
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes   

[Allow Package Management all Users]
Identity=unix-user:*
Action=org.debian.apt.*;io.snapcraft.*;org.freedesktop.packagekit.*;com.ubuntu.update-notifier.*
ResultAny=no
ResultInactive=no
ResultActive=yes
```
