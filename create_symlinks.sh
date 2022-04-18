#!/bin/bash

files="bashrc zshrc vimrc gitconfig gitignore"

for file in $files; do
    cp .$file ~/dotfiles/
    ln -s ~/dotfiles/.$file ~/.$file
done
