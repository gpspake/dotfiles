#!/usr/bin/env bash

# DOTFILES

git clone https://github.com/gpspake/dotfiles $HOME

# BREW

## install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## tap brew bundle
brew tap Homebrew/bundle

## run brew bundle
brew bundle

# SYMLINKS

LINK="ln -s $HOME/dotfiles"

## bash
$LINK/bash/.bash_profile ~/.bash_profile

## git
$LINK/git/.gitconfig ~/.gitconfig

## vim
mkdir -p ~/.vim/colors
$LINK/vim/.vimrc ~/.vimrc
$LINK/vim/flattown.vim ~.vim/colors/flattown.vim

## zsh
mkdir -p ~/.myzsh/remotes/gpspake/modules/gpspake
$LINK/zsh/gpspake.plugin.zsh ~/.myzsh/remotes/gpspake/modules/gpspake/gpspake

## keybindings

## services

