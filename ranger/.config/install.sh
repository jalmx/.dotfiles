#!/bin/bash

pip install ranger-fm

PATH_RANGER="ranger/"
# install devicon

echo "installing devicon"
git clone https://github.com/alexanderjeurissen/ranger_devicons $PATH_RANGER/plugins/ranger_devicons

