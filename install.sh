#!/bin/bash
# Install dependencies
sudo dnf install nodejs ripgrep  git wget pandoc texlive-shceme-medium

# Insall plugged
mkdir ~/.config/nvim/plugged
mkdir -p ~/.config/nvim/site/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ~/.config/nvim/site/autoload/plug.vim

# Install pandoc template
mkdir -p ~/.local/share/pandoc/templates
wget -O ~/.local/share/pandoc/templates/default.tex -P  https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex

# Run plugin installation
nvim +PlugInstall +qa
