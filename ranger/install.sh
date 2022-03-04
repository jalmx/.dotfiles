#!/bin/bash

pip3 install ranger-fm

# install devicon

echo "installing devicon"
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> .config/ranger/rc.conf
#make simbolin link

