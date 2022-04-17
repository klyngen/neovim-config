#!/bin/bash
# Install dependencies
sudo dnf install nodejs ripgrep git pandoc 

# Insall plugged
mkdir ~/.config/nvim/plugged
mkdir -p ~/.config/nvim/site/autoload
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o ~/.config/nvim/site/autoload/plug.vim

# Install pandoc template
mkdir -p ~/.local/share/pandoc/templates
curl https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex -o ~/.local/share/pandoc/templates/default.tex  

# Run plugin installation
nvim +PlugInstall +qa
