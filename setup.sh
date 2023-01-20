#!/bin/sh

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# install starship
curl -sS https://starship.rs/install.sh | sh

# add symbolic link for .zshrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc