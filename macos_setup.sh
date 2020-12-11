#!/bin/bash

# Command Line Tools (CLI)
xcode-select --install

# Install external sources files
sudo spctl --master-disable

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# GUI programs
brew install --cask \
  visual-studio-code \
  google-chrome \
  brave-browser \
  iterm2 \
  docker \
  vlc \
  slack \
  telegram \
  whatsapp \
  evernote \
  jumpcut \
  bettertouchtool \
  postgres \
  postman

# git
brew install git

# wget
brew install wget

# fswatch
brew install fswatch

# grep
brew install grep

# fzf (command line fuzzy finder)
brew install fzf

# Perl
brew install perl
brew link perl --force

# Python
brew install python
pip install --upgrade setuptools
pip install --upgrade pip

# GNU tar
brew install gnu-tar

# GNU sed
brew install gnu-sed

# GnuPG
brew install gpg

# vim
brew install vim

# htop
brew install htop

# tmux
brew install reattach-to-user-namespace
brew install tmux

# Capybara dependencies
brew install qt5
brew link --force qt5

# Imagemagick
brew install imagemagick --build-from-source

## libMagick: Dynamic libraries
cd /usr/local/Cellar/imagemagick/6.8.6-3/lib
ln -s libMagick++-6.Q16.1.dylib libMagick++.dylib

# Ruby
brew install rbenv
rbenv init

## Install rubies
rbenv install 2.7.1

# Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node
nvm use node # after terminal restart

# Bitbar
brew install --cask bitbar

# Copy dotfiles tdo ~/dotfiles & create symlinks
chmod +x create_symlinks.sh
sh create_symlinks.sh

# Zsh & Oh My Zsh
brew install zsh
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting
