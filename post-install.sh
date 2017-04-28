#!/bin/bash

cat << "EOF"

#############################################################################
#############################################################################
                                                                              
_|                  _|        _|      _|    _|                                
_|          _|_|    _|  _|            _|    _|    _|_|    _|  _|_|  _|_|_|    
_|        _|    _|  _|_|      _|      _|_|_|_|  _|    _|  _|_|      _|    _|  
_|        _|    _|  _|  _|    _|      _|    _|  _|    _|  _|        _|    _|  
_|_|_|_|    _|_|    _|    _|  _|      _|    _|    _|_|    _|        _|    _|                      

#############################################################################
#############################################################################

More power and speed to Elementary Os Loki
Version 0.1

Author: Alessandro Giuliano @ alessandro@studiogram.it

Feel free to use, share, edit, just remember to credit.

#########################################################


EOF
echo
echo
echo
echo ------------------------------------------------
read -p "Do want to remove non-latin fonts? [Y/N]" -n 1 -r
echo 	
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo apt-get purge fonts-kacst fonts-kacst-one fonts-khmeros-core fonts-lklug-sinhala \
	fonts-lohit-guru fonts-guru fonts-nanum fonts-noto-cjk fonts-takao-pgothic \
	fonts-tibetan-machine fonts-guru-extra fonts-lao fonts-sil-padauk fonts-sil-abyssinica \
	fonts-tlwg-* && sudo apt-get autoremove
fi

read -p "Do want to remove epiphany, scratch, bluetooth, apport, mail client, stupid software center? [Y/N] " -n 1 -r
echo ------------------------------------------------
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo apt-get remove apport scratch-text-editor pantheon-mail epiphany-browser
	sudo apt-get purge software-center bluez modemmanager scratch-text-editor
fi
echo "LOOKING FOR UPDATE"
sudo apt-get update
echo "TIME TO DOWNLOAD UPDATE"
sudo apt-get upgrade

echo ------------------------------------------------
read -p "Do you want to install elementary-tweaks and, paper icon theme and arc gtk theme? [Y/N]" -n 1 -r
echo 	
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo add-apt-repository ppa:philip.scott/elementary-tweaks
	sudo add-apt-repository ppa:noobslab/apps
	sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
	sudo add-apt-repository ppa:snwh/pulp
	wget -nv http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
	sudo apt-key add - < Release.key
	sudo apt-get update
	sudo apt-get install arch-theme paper-icon-theme elementary-tweaks
fi

echo "UTILITY TIME"
echo ------------------------------------------------
read -p "Do you want to install UTILITY pack? [Y/N]" -n 1 -r
echo 	
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo apt-get install baobab gparted localepurge filezilla apt-fast bum npm bleachbit gnumeric htop nload indicator-cpufreq synapse synaptyc sysv-rc-conf transmission software-properties-common gdebi
	wget "https://github.com/nitroale/loki-horn/blob/master/bash_aliases"
	wget "https://github.com/nitroale/loki-horn/blob/master/wheater.desktop"
	mv bash_aliases .bash_aliases
fi

echo ------------------------------------------------
read -p "Do you want to install PRODUCTIVITY pack? [Y/N]" -n 1 -r
echo 	
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo apt-get install libreoffice-writer libreoffice-calc evince inkscape gimp vlc nomacs
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
	sudo apt-get install -f
fi

echo ------------------------------------------------
read -p "Do you have at least 4 gigs of RAM? [Y/N]" -n 1 -r
echo 	
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
	sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf"
	echo "tmpfs /tmp tmpfs rw,nosuid,nodev" | sudo tee -a /etc/fstab
fi

echo "Finished, thank you for using Loki Horn"



