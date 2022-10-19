#!/bin/bash

sudo systemctl set-ntp true
sudo hwclock --systohc

git clone https://aur.archlinux.org/paru.git
cd paru/
makepkg -si --noconfirm

paru -S i3 xorg dmenu picom rofi lxappearance gdm terminator stow neofetch wget ttf-dejavu ttf-liberation noto-fonts nemo materia-gtk-theme papirus-icon-theme firefox

sudo systemctl enable gdm

/bin/echo -e "\e[1;32mDone! SYSTEM REBOOTS IN 5 SECONDS \e[0m"

#sleep 5
#reboot
