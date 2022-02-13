#!/bin/bash

echo "======================instalando git y zsh=================="
sudo apt install git zsh -y > /dev/null

echo "installing curl & wget"
sudo apt install curl -y > /dev/null
sudo apt install wget -y > /dev/null

echo "====================installing utils for bluetooth=================================="
sudo apt install bluetooth bluez -y > /dev/null
sudo apt install pulseaudio-module-bluetooth -y > /dev/null
sudo apt install bluez-tools bluez-tests bluez-btsco bluez-dbg bluez-obexd bluez-hcidump -y > /dev/null
sudo apt install rfkill rfdump rfcdiff  -y > /dev/null

echo "=============================installing util================================"
sudo apt install scrot -y > /dev/null # take screenshot
sudo apt install feh -y  > /dev/null # config wallpaper
sudo apt install vim -y  > /dev/null # editor

echo "=========================install python utils========================================"
sudo apt install python3-pip
sudo apt install python3-venv
pip3 install ranger-fm
pip3 install bpytop --upgrade

echo "==============================config path========================="
echo "export PATH=$PATH/.local/bin" >> $HOME/.zshrc

echo "=========================cambiando permisos a archivos====================================="
sudo chmod +x -R ./utils/*

echo "============================ejecutando scripts de instalacion==============================="


echo "ejecutando scripts de instalacion"
