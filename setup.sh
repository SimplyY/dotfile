#!/usr/bin/env bash

DOTFILES=$HOME/dotfile

echo "Installing dotfiles..."

echo "Initializing submodule(s)..."
git submodule update --init --recursive

source $DOTFILES/scripts/link.sh
# source $DOTFILES/scripts/brew.sh

# fish
chsh -s /usr/local/bin/fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells

source $DOTFILES/scripts/npm.sh
