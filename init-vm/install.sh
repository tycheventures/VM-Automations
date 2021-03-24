#cheking update
sudo apt-get update --assume-yes
sudo apt-get upgrade --assume-yes
sudo apt install net-tools unzip curl qemu-guest-agent --assume-yes
sudo systemctl start qemu-guest-agent
sudo apt autoremove --assume-yes

#installation of xrdp
sudo apt install xubuntu-desktop --assume-yes
sudo apt install xrdp --assume-yes
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp

#Dconf-editor
sudo apt-get install dconf-editor --assume-yes

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb --assume-yes

#filezilla
sudo apt-get install filezilla --assume-yes

#kruler
sudo apt-get install -y kruler --assume-yes

#gimp
sudo snap install gimp

#opera
sudo snap install opera

#skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb --assume-yes

#slack
sudo snap install slack --classic

#git
sudo apt-get install git --assume-yes 

#samba
sudo apt install samba --assume-yes
sudo service smbd restart
sudo ufw allow samba

#adobe reader
sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 --assume-yes
wget -qO adobe.deb ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo gdebi -n adobe.deb

#npm
sudo apt install npm --assume-yes
sudo npm install -g npm

#sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#sublime merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https --assume-yes
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-merge --assume-yes

#Visual studio code
sudo snap install --classic code # or code-insiders

#PFC- project folder creator
mkdir ~/work
wget -qO pfc https://raw.githubusercontent.com/tycheventures/vm-automations/main/pfc/pfc && sudo mv pfc /usr/bin/ && sudo chmod +x /usr/bin/pfc

#webinoly
wget -qO weby qrok.es/wy && sudo bash weby 3
sudo webinoly -timezone=Asia/Kolkata
sudo httpauth -wp-admin=off
sudo webinoly -login-www-data=on
sudo webinoly -conf-value_max-mb-uploads=1024
sudo webinoly -conf-value_php-max-time=3000
sudo webinoly -conf-value_php-max-mem=512
sudo httpauth -add=[tyche,net]

#composer
sudo apt install php-cli php-zip php-curl php-mbstring --assume-yes
sudo service nginx restart
cd ~ && curl -sS https://getcomposer.org/installer -o composer-setup.php && HASH=`curl -sS https://composer.github.io/installer.sig` && php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php');   } echo PHP_EOL;" 
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

#wpcli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp
wp --info

#ip address
ifconfig
