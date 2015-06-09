#!/usr/bin/env bash

#todo
#install zsh
#brew install

#setup symlinks
LINK="ln -s $HOME/dotfiles"
$LINK/bash/.bash_profile ~/.bash_profile
$LINK/git/.gitconfig ~/.gitconfig
$LINK/vim/.vimrc ~/.vimrc
mkdir -p ~/.oh-my-zsh/plugins/gpspake/gpspake.plugin.zsh
$LINK/zsh/gpspake.plugin.zsh ~/.oh-my-zsh/plugins/gpspake/gpspake.plugin.zsh

#keybindings
