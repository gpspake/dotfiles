#!/usr/bin/env bash

DOTFILES_DIRECTORY="${HOME}/code/dotfiles"

# ---------
# Oh My Zsh
# ---------

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --------
# Symlinks
# --------

# bash
ln -s ${DOTFILES_DIRECTORY}/bash/.bash_profile ${HOME}/.bash_profile

# vim
ln -s ${DOTFILES_DIRECTORY}/vim/.vimrc ${HOME}/.vimrc
ln -s ${DOTFILES_DIRECTORY}/vim/.vim ${HOME}/.vim

# zsh
ln -s ${DOTFILES_DIRECTORY}/zsh/gpspake ${HOME}/.oh-my-zsh/custom/plugins/gpspake
ln -s ${DOTFILES_DIRECTORY}/zsh/gpspake-wsl ${HOME}/.oh-my-zsh/custom/plugins/gpspake-wsl
