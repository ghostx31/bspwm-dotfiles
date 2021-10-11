#!/bin/sh 
echo "Installing packages..."; sleep 1;
paru -S - < pkglist.txt --needed

clear
echo "Moving configs..."; sleep 1;
cp -r .config/* $HOME/.config/

clear
echo "Cloning Wallpapers:"; sleep 1;
mkdir -p $HOME/Documents/Wallpapers
git -C $HOME/Documents/Wallpapers clone https://github.com/linuxdotexe/nordic-wallpapers.git
sleep 1;
clear
echo "Installing theme and cursors: "
sudo cp -r Themes/Nordic-darker-v40/ /usr/share/themes/
sudo cp -r Icons/* /usr/share/icons 

sleep 1;
clear; echo "Enabling lightdm ";
sudo systemctl enable lightdm-plymouth.service 

clear
echo "Enabling lightdm as the lock and supend screen "
sleep 2;
clear
sudo cp -r suspend@.service /etc/systemd/system/
sudo systemctl enable suspend@$USER.service 
echo "Done"
clear


