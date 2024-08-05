#! /bin/bash

DOTFILES=(.zshrc .gitconfig)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/Repos/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
