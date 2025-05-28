#!/bin/bash

# Customize PS4 to include color. Here, we use cyan color.
export PS4='\e[0;36m+ \e[m'

# Enable echo
set -x

# This script will install all the necessary tools for the class
cd

# APT method
sudo apt update
sudo apt install locate=4.9.0-4 python3-pip=23.0.1+dfsg-1 python3-venv=3.11.2-1+b1 pipx=1.1.0-1 libimage-exiftool-perl=12.57+dfsg-1 recon-ng=5.1.2-1.1 testssl.sh=3.0.8+dfsg1-1 gobuster=3.6.0-0parrot1 dirbuster=1.0-1parrot1 nikto=1:2.5.0+git20230114.90ff645-0parrot1 nmap=7.94+git20230807.3be01efb1+dfsg-2+parrot1 masscan=2:1.3.2+ds1-1 eyewitness=20230525.1+git20230720-0parrot1 sqlmap=1.8.3-1parrot1 python3-pymetasploit3=1.0.3+git20230816.afe0eb3-0parrot1 exploitdb=20240329-1parrot2 responder=3.1.3.0-0parrot1 john=1.9.0-Jumbo-1+git20211102-0parrot1 hydra=9.4-1 proxychains4=4.16-2 urlcrazy=0.7.3-0parrot1 cewl=5.5.2-2 juice-shop=14.5.1+node18-0parrot1 -y

# Optional Seclists full install
# sudo apt install seclists=2023.3-0parrot1 -y

# pipx method
pipx install parsuite
pipx ensurepath
sudo pipx ensurepath

# Below lab files have been moved to the OTF-labs repo under the "supp" folder
# wget https://otf.sfo2.cdn.digitaloceanspaces.com/live/supp/otf_Lab_Files.zip -O ~/otf_Lab_Files.zip
# unzip ~/otf_Lab_Files.zip

sudo apt autoremove -y
sudo updatedb

source .bashrc

# Disable echo
set +x