#!/bin/sh

# Update Homebrew, formulae, and packages

brew update
brew upgrade --all

# Install rcm for dotfile management

brew install rcm

# Tap homebrew/x11, for xpdf

brew tap homebrew/x11
brew tap homebrew/games
brew tap beeftornado/rmtree
brew tap neovim/homebrew-neovim

# Install GNU packages (and override OSX version)

brew install ag
brew install autoconf
brew install beeftornado/rmtree/brew-rmtree
brew install coreutils
brew install dockutil
brew install ghostscript
brew install git
brew install go
brew install grep 
brew install hub
brew install jq
brew install lua
brew install lunchy
brew install markdown
brew install mpd
brew install ncmpcpp
brew install --HEAD neovim
brew install openssl
brew install pandoc
brew install peco
brew install perl
brew install python3
brew install sqlite
brew install ssh-copy-id
brew install tree
brew install https://raw.githubusercontent.com/choppsv1/homebrew-term24/master/tmux.rb
brew install vim --with-lua
brew install wget
brew install xpdf
brew install zsh

# Install games because I'm not a savage :P

# Because I hate myself
brew install angband
brew install rogue
