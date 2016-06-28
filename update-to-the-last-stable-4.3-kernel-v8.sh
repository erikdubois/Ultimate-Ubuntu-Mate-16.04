#!/bin/bash 
############################################################################
#
#                                       
#                          ./+o+-       
#                  yyyyy- -yyyyyy+      
#               ://+//////-yyyyyyo      
#           .++ .:/++++++/-.+sss/`      
#         .:++o:  /++++++++/:--:/-      
#        o:+o+:++.`..```.-/oo+++++/     
#       .:+o:+o/.          `+sssoo+/    
#  .++/+:+oo+o:`             /sssooo.   
# /+++//+:`oo+o               /::--:.   
# \+/+o+++`o++o               ++////.   
#  .++.o+++oo+:`             /dddhhh.   
#       .+.o+oo:.          `oddhhhh+    
#        \+.++o+o``-````.:ohdhhhhh+     
#         `:o+++ `ohhhhhhhhyo++os:      
#           .o:`.syhhhhhhh/.oo++o`      
#               /osyyyyyyo++ooo+++/     
#                   ````` +oo+++o\:    
#                          `oo++.      
#                                
#
#
############################################################################
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# More from Erik Dubois
#
# Aurora conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/
#
# Sardi icons can be found at
# http://sourceforge.net/projects/sardi/
#
# Yltra flat icons can be found at 
# https://github.com/erikdubois/yltra-flat-icon-theme
############################################################################
#
# the option -y has been added. It will autoinstall all. Omit if you do not want that.
#
############################################################################


############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
############################################################################

#  H I G H L Y    E X P E R I M E N T A L

#  Better to read and do a step by step upgrade 

#  http://erikdubois.be/linux/the-ultimate-linux-mint-update

#  if you want to experiment on a computer where there is no data loss risk

#  please be my guest

echo "Let us check if your computer is up-to-date"


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y

#Grub customizer if you dual boot
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#sudo apt-get -y update
#sudo apt-get install -y grub-customizer


# latest kernel check the following url
# http://kernel.ubuntu.com/~kernel-ppa/mainline/
# at the moment you can have kernel 4.2.0
# depending of you hardware you can install it as wel
# keep in mind that nvidia or ati drivers sometimes clash with the kernel
# read the latest article on these matters at http://erikdubois.be
 
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.3.3-wily/linux-headers-4.3.3-040303-generic_4.3.3-040303.201512150130_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.3.3-wily/linux-headers-4.3.3-040303_4.3.3-040303.201512150130_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.3.3-wily/linux-image-4.3.3-040303-generic_4.3.3-040303.201512150130_amd64.deb

sudo dpkg -i linux*

# Nvidia drivers
# since my graphical card nvidia gt9600 clashes with this driver 
# I use the nouveau driver that is included in the kernel
# sudo add-apt-repository -y ppa:xorg-edgers/ppa
# sudo apt-get update
# sudo apt-get install nvidia-340 -y
# check on nvdia.com what driver you should use with your hardware

#latest cinnamon and nemo - I choose to get them via romeo
#sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
#sudo apt-get update 
#sudo apt-get install cinnamon -y

rm linux-*

#ending









