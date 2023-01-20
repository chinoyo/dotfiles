#!/bin/sh

# install nvm
if [ ! -d ~/.nvm/.git ]; then 
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
else 
    echo "nvm already installed."
fi

# install starship
if [ ! -f /usr/local/bin/starship ]; then
    curl -sS https://starship.rs/install.sh | sh
else
    echo "starship already installed."
fi

# add symbolic link for zshrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# add symbolic link for git config
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# add symbolic link for starship config
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml