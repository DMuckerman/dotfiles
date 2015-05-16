#!/bin/sh

# Update Homebrew, formulae, and packages

brew update
brew upgrade --all

# Install rcm for dotfile management

brew install rcm

# Tap homebrew/x11, for xpdf

brew tap homebrew/x11
brew tap beeftornado/rmtree

# Install GNU packages (and override OSX version)

brew install ag
brew install autoconf
brew install beeftornado/rmtree/brew-rmtree
brew install coreutils
brew install dockutil
brew install emacs
brew install fontconfig
brew install freetype
brew install gd
brew install gdbm
brew install ghostscript
brew install git
brew install gmp
brew install go
brew install gnu-sed 
brew install grep 
brew install hub
brew install jbig2dec
brew install jpeg
brew install jq
brew install lesstif
brew install libpng
brew install libtiff
brew install little-cms2
brew install lua
brew install macvim --with-cscope --with-lua --HEAD
brew install markdown
brew install openssl
brew install pandoc
brew install peco
brew install perl
brew install python
brew install rakudo-star
brew install readline
brew install rolldice
brew install sqlite
brew install ssh-copy-id
brew install sshfs
brew install svn
brew install tree
brew install vim --with-lua
brew install wget
brew install --build-from-source xapian --with-python
brew install xpdf
brew install xz
brew install zsh
