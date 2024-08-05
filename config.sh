#! /bin/bash

DOTFILES=(.zshrc .gitconfig .bash_profile)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/Repos/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
