#cheking update
sudo apt-get update --assume-yes
sudo apt-get upgrade --assume-yes
sudo apt install net-tools --assume-yes
sudo apt autoremove --assume-yes

#installation of xrdp
sudo apt install xubuntu-desktop --assume-yes
sudo apt install xrdp --assume-yes
sudo adduser xrdp ssl-cert --assume-yes
sudo systemctl restart xrdp --assume-yes

#Dconf-editor
sudo apt-get install dconf-editor --assume-yes

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --assume-yes
sudo apt install ./google-chrome-stable_current_amd64.deb --assume-yes

#filezilla
sudo apt-get install filezilla --assume-yes

#kruler
sudo apt-get install -y kruler --assume-yes

#gimp
sudo snap install gimp --assume-yes

#opera
sudo snap install opera --assume-yes

#skype
wget https://go.skype.com/skypeforlinux-64.deb --assume-yes
sudo apt install ./skypeforlinux-64.deb--assume-yes

#slack
sudo snap install slack --classic --assume-yes

#git
apt-get install git --assume-yes

#samba
sudo apt install samba --assume-yes

#adobe reader
sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 --assume-yes
wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb --assume-yes
sudo gdebi AdbeRdr9.5.5-1_i386linux_enu.deb --assume-yes

#npm
npm install -g npm

#composer
sudo apt install php-cli unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php');   } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#webinoly
wget -qO weby qrok.es/wy && sudo bash weby 3 --assume-yes
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
