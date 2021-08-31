#!/bin/bash

# https://github.com/nvm-sh/nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

ZSHRC="$HOME/.zshrc"

if [[ -f "$ZSHRC" ]]; then
	echo "agregar la variable al zshrc -> https://github.com/nvm-sh/nvm"
fi


