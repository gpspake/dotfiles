#!/bin/bash

LINK="ln -s $HOME/dotfiles"

$LINK/bash/.bash_profile ~/.bash_profile
$LINK/git/.gitconfig ~/.gitconfig
$LINK/vim/.vimrc ~/.vimrc
