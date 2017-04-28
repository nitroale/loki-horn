# Loki-horn
## Post installation script pack for Elementary OS 0.4

This is a simple script to help me customize Elementary OS 0.4 with software and settings I use.

### Usage
Simply open your terminal and paste this code

<code>wget "https://github.com/nitroale/loki-horn/blob/master/post-install.sh"</code><br>
<code>chmod +rx post-install.sh</code></br>
<code>./post-install.sh</code></br>

### What it does?

Loki Horn perform the following actions asking user permission (with yes/no questions) in each block.
* **remove** non latin fonts
* **remove** Apport, scratch, pantheon-mail, epiphany-browser, software center, bluetooth, modemmanager
* update softwara
* **install** install elementary-tweaks and, paper icon theme and arc gtk theme
* **Utility pack**
  * **install** baobab gparted localepurge filezilla apt-fast bum npm bleachbit gnumeric htop nload indicator-cpufreq synapse synaptyc sysv-rc-conf transmission software-properties-common gdebi
  * **install** wheater desktop and bash aliases
* **Productivity pack**
  * **install** libreoffice-writer libreoffice-calc evince inkscape gimp vlc nomacs Google Chrome
* Reduce swappiness and put tmp folder in ram
