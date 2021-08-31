#!/bin/bash

echo "======================instalando git y zsh=================="
sudo apt install git zsh -y

echo "installing curl & wget"
sudo apt install curl -y
sudo apt install wget -y

echo "====================installing utils for bluetooth=================================="
sudo apt install bluetooth bluez -y
sudo apt install pulseaudio-module-bluetooth -y
sudo apt install bluez-tools bluez-tests bluez-btsco bluez-dbg bluez-obexd bluez-hcidump -y
sudo apt install rfkill rfdump rfcdiff  -y

echo "=============================installing util================================"
sudo apt install scrot -y
sudo apt install feh -y
sudo apt install vim -y

echo "=========================install python utils========================================"
sudo apt install python3-pip
sudo apt install python3-venv

echo "==============================config path========================="
echo "export PATH=$PATH/.local/bin" >> $HOME/.zshrc

echo "==============================installing utils python3=================================="
pip3 install ranger-fm
pip3 install bpytop --upgrade

echo "=========================cambiando permisos a archivos====================================="
sudo chmod +x -R ./utils/*

echo "============================ejecutando scripts de instalacion==============================="



echo "ejecutando scripts de instalacion"