#!/bin/sh

# Update Homebrew, formulae, and packages

brew update
brew upgrade --all

# Install GNU Stow for dotfile management

brew install stow

# Tap homebrew/x11, for xpdf

brew tap homebrew/x11
brew tap beeftornado/rmtree
brew tap homebrew/dupes
brew tap homebrew/versions

# Install GNU packages
brew install binutils
brew install coreutils
brew install diffutils
brew install ed
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls --with-guile
brew install grep
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# Install updated versions of OSX stuff
brew install bash
brew install gdb # gdb requires further actions to make it work. See `brew info gdb`.
echo 'gdb requires further actions to make it work. See `brew info gdb`.'
brew install gpatch
brew install m4
brew install make --with-default-names --with-guile
brew install nano

# GUI EMACS MASTER RACE
## Emacs Mac port for better comptatibility with macOS
brew install emacs-mac --with-glib --with-gnutls --with-imagemagick --with-official-icon --with-natural-title-bar
brew linkapps emacs-mac

# Install stuff
brew install ag
brew install autoconf
brew install beeftornado/rmtree/brew-rmtree
brew install dockutil
brew install fortune
brew install ghostscript
brew install git
brew install isync
brew install java
brew install jenv
brew install jq
brew install lua
brew install markdown
brew install mosh
brew install mpd
brew install ncmpcpp --with-visualizer --with-clock
brew install neovim
brew install openssl
brew install openssh
brew install pandoc
brew install peco
brew install perl
brew install python3
brew install rg
brew install rsync
brew install sqlite
brew install ssh-copy-id
brew install tree
brew install tmux
brew install unzip
brew install vim --override-system-vi --with-lua --with-client-server --with-luajit --with-python3 --with-tcl
brew install xpdf
brew install zsh
