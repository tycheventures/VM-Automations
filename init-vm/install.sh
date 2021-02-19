#cheking update
sudo apt-get update
sudo apt-get upgrade
sudo apt install net-tools
sudo apt autoremove

#installation of xrdp
sudo apt install xubuntu-desktop
sudo apt install xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp

#Dconf-editor
sudo apt-get install dconf-editor

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#filezilla
sudo apt-get install filezilla

#kruler
sudo apt-get install -y kruler

#gimp
sudo snap install gimp

#opera
sudo snap install opera

#skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb

#slack
sudo snap install slack --classic

#git
apt-get install git

#samba
sudo apt install samba

#adobe reader
sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386
wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb

#webinoly
wget -qO weby qrok.es/wy && sudo bash weby 3
sudo webinoly -timezone=Asia/Kolkata
sudo httpauth -wp-admin=off
sudo webinoly -login-www-data=on
sudo webinoly -conf-value_max-mb-uploads=1024
sudo webinoly -conf-value_php-max-time=3000
sudo webinoly -conf-value_php-max-mem=512
sudo httpauth -add=[tyche,net]

#ip address
ifconfig

#PFC- project folder creator
mkdir ~/work
wget -qO pfc https://raw.githubusercontent.com/tycheventures/vm-automations/main/pfc/pfc && sudo mv pfc /usr/bin/ && sudo chmod +x /usr/bin/pfc
