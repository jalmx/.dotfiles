#!/bin/bash

echo "install Plug vim"
vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

