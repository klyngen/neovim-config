#!/bin/bash
sudo dnf install nodejs ripgrep  git wget
mkdir -p ~/.config/nvim/site/autoload
mkdir ~/.config/nvim/plugged
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ~/.config/nvim/site/autoload/plug.vim
nvim +PlugInstall +qa

