#genome
gnome-extensions enable ubuntu-dock@ubuntu.com
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

#dconf
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height true
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink true
dconf write /org/gnome/shell/extensions/dash-to-dock/force-straight-corner true
dconf write /org/gnome/shell/extensions/dash-to-dock/autohide true

#vscode
code --install-extension ms-vscode.cpptools
code --install-extension bajdzis.vscode-database
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension eamodio.gitlens
code --install-extension ecmel.vscode-html-css
code --install-extension felixfbecker.php-debug
code --install-extension felixfbecker.php-intellisense
code --install-extension ikappas.phpcs
code --install-extension ms-vscode.cpptools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension mtxr.sqltools
