#!/usr/bin/env bash

# --------
# Homebrew
# --------

export HOMEBREW_BREWFILE=${DOTFILES_DIRECTORY}/homebrew/Brewfile

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tap brew bundle
brew tap Homebrew/bundle

# run brew bundle
brew bundle -v