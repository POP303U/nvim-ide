#!/bin/bash

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/POP303U/vscode-nvim ~/.config/nvim --depth 1 && nvim
