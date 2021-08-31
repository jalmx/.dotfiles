#!/bin/bash

echo "Iniciando la configuracion de vim"

echo "copio el archivo de configuracion con un enlace simbolico"

ln -sf $PWD/vimrc $HOME/.vimrc

echo "install Plug vim"
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

