#              ________________________________________________
#             /                                                \
#            |    _________________________________________     |
#            |   |                                         |    |
#            |   |  C:\> _                                 |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |                                         |    |
#            |   |_________________________________________|    |
#            |                                                  |
#             \_________________________________________________/
#                    \___________________________________/
#                 ___________________________________________
#              _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
#           _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
#        _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
#     _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
#  _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
# :-------------------------------------------------------------------------:
# `---._.-------------------------------------------------------------._.---'
# Author: Luka Kerin




#!/bin/bash

#light config
theme1=WhiteSur-light-solid
icons1=MacOS-3D-Icons-Blue-Light
shell1=MacOS-3D-Shell-3.x-blue-light
background1=file:///home/username/Pictures/background1.png

#dark config
theme2=WhiteSur-dark-solid
icons2=MacOS-3D-Icons-Blue-Dark
shell2=MacOS-3D-Shell-3.x-blue-dark
background2=file:///home/username/Pictures/background2.png


current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
gsettings set org.gnome.desktop.interface gtk-theme "$theme2"
new_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [ $current_theme = $new_theme ]
then
  gsettings set org.gnome.desktop.interface gtk-theme "$theme1"
  gsettings set org.gnome.desktop.interface icon-theme "$icons1"
  gsettings set org.gnome.shell.extensions.user-theme name "$shell1"
  gsettings set org.gnome.desktop.background picture-uri file:///home/username/Pictures/Backgrounds/bike.jpeg
  echo "############################"
  echo -e "\e[1mOld theme:\e[0m \e[9m$theme2\e[0m"
  echo -e "\e[1mNew theme:\e[0m \e[3m$theme1\e[0m"
  echo "############################"


else
  gsettings set org.gnome.desktop.interface gtk-theme "$theme2"
  gsettings set org.gnome.desktop.interface icon-theme "$icons2"
  gsettings set org.gnome.shell.extensions.user-theme name "$shell2"
  gsettings set org.gnome.desktop.background picture-uri file:///home/username/Pictures/Backgrounds/noplacelikehome.png
  echo "############################"
  echo -e "\e[1mOld theme:\e[0m \e[9m$theme1\e[0m"
  echo -e "\e[1mNew theme:\e[0m \e[3m$theme2\e[0m"
  echo "############################"
fi
