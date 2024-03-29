#!/bin/bash
# Log Location on Server.
exec > >(tee -i init-vm.log)
exec 2>&1

mkdir -p /tmp/init-temp && cd /tmp/init-temp/

#Remove unwanted packages 
sudo apt purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy gnome-sushi gnome-taquin gnome-tetravex  gnome-robots gnome-chess lightsoff swell-foop quadrapassel --assume-yes

#cheking update
sudo apt-get update --assume-yes
sudo apt-get upgrade --assume-yes
sudo apt-get install net-tools unzip curl ssh qemu-guest-agent --assume-yes
sudo systemctl start qemu-guest-agent
sudo apt autoremove --assume-yes

#installation of xrdp
sudo apt install xubuntu-desktop xrdp --assume-yes
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp

#configure
wget https://raw.githubusercontent.com/tycheventures/VM-Automations/main/init-vm/configure.sh
chmod +x configure.sh

#popupfix for rdp
wget https://raw.githubusercontent.com/tycheventures/VM-Automations/main/init-vm/45-allow-colord.txt && sudo mv 45-allow-colord.txt /etc/polkit-1/localauthority/50-local.d/ && cat 45-allow-colord.pkla > 45-allow-colord.txt 

#genome shell extension
sudo apt install gnome-shell-extensions --assume-yes

#Dconf-editor
sudo apt-get install dconf-editor --assume-yes

#samba
sudo apt install samba --assume-yes
sudo service smbd restart
sudo ufw allow samba

#git, filezilla, kruler
sudo apt-get install git filezilla kruler --assume-yes

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb --assume-yes

#opera
sudo snap install opera

#gimp
sudo snap install gimp

#slack
sudo snap install slack --classic

#skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb --assume-yes

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb --assume-yes

#adobe reader
sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 --assume-yes
wget -qO adobe.deb ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo gdebi -n adobe.deb

#npm
sudo apt install npm --assume-yes
sudo npm install -g npm
sudo npm install -g brewer
sudo npm install -g grunt-cli

#sublime text & sublime merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https --assume-yes	
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text sublime-merge --assume-yes

#Visual studio code
sudo snap install --classic code # or code-insiders

#note pad++
sudo snap install notepad-plus-plus

#simplerecorder
sudo apt-get update
sudo apt-get install simplescreenrecorder

#webinoly
wget -qO weby qrok.es/wy && sudo bash weby 3
sudo webinoly -timezone=Asia/Kolkata
sudo webinoly -login-www-data=on
sudo webinoly -dynvar=max-mb-uploads -value=1024
sudo webinoly -dynvar=php-max-time -value=3000
sudo webinoly -dynvar=php-max-mem -value=512
sudo httpauth -add=[tyche,net]
sudo webinoly -server-reset=php
sudo webinoly -server-reset=nginx

#composer
sudo apt install php-cli php-zip php-curl php-mbstring --assume-yes
sudo service nginx restart
curl -sS https://getcomposer.org/installer -o composer-setup.php && HASH=`curl -sS https://composer.github.io/installer.sig` && php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php');   } echo PHP_EOL;" 
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#wpcli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp
wp --info

#auto remove
sudo apt autoremove --assume-yes

#ip address
ifconfig

#PFC- project folder creator
mkdir -p ~/work
wget -qO pfc https://raw.githubusercontent.com/tycheventures/vm-automations/main/pfc/pfc && sudo mv pfc /usr/bin/ && sudo chmod +x /usr/bin/pfc
echo "Start creating project folder & subfolders of project with command 'pfc domain.com'. Use projects domain name as project folder name"
