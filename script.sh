#!/bin/bash

# Install Packages
sudo pacman -S rofi polybar feh lxappearance kitty qt5ct blueman xorg-xrandr 
 
# Install Yay
cd ~
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/Documents/Setup

# Install Picom
sudo yay -S picom-git 

# Theme
mv themes/Catppuccin-Macchiato ~/.themes
sudo rm -r ~/.config/gtk-4.0/*
cp -r themes/Catppuccin-Macchiato/gtk-4.0/* ~/.config/gtk-4.0/
mv themes/Catppuccin-Macchiato.conf ~/.config/qt5ct/colors
sudo mv environment /etc/environment

# I3 
sudo rm -r ~/.config/i3 
sudo mv i3 ~/.config

# Polybar
sudo rm -r ~/.config/polybar
sudo mv polybar ~/.config

# Picom
sudo rm -r ~/.config/picom
sudo mv picom ~/.config

# Kitty
sudo rm -r ~/.config/kitty
sudo mv kitty ~/.config

# Rofi
sudo rm -r ~/.config/rofi
sudo mv rofi ~/.config

# .zshrc
mv -f .zshrc ~

# Wallpapers 
mv Wallpapers ~/Pictures

# Terminal
mv starship.toml ~/.config

# Change Shell
chsh -s $(which zsh)
