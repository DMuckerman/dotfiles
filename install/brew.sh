#!/bin/sh

# Update Homebrew, formulae, and packages

brew update
brew upgrade --all

# Install GNU Stow for dotfile management

brew install stow

# Tap homebrew/x11, for xpdf

brew tap homebrew/x11
brew tap homebrew/games
brew tap beeftornado/rmtree
brew tap neovim/homebrew-neovim
brew tap homebrew/dupes
brew tap homebrew/versions

# Install GNU packages (and override OSX version)
brew install binutils
brew install coreutils
brew install diffutils
brew install ed --with-default-names
brew install findutils --with-default-names
brew install gawk
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls --with-guile
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# Install updated versions of OSX stuff
brew install bash
brew install emacs --with-cocoa --with-ctags --with-dbus --with-gnutls --with-imagemagick --with-librsvg --devel
brew install gdb # gdb requires further actions to make it work. See `brew info gdb`.
brew install gpatch
brew install m4
brew install make --with-default-names --with-guile
brew install nano

# GUI EMACS MASTER RACE
brew linkapps emacs

# Install stuff
brew install ag
brew install autoconf
brew install beeftornado/rmtree/brew-rmtree
brew install catimg
brew install dockutil
brew install fortune
brew install ghostscript
brew install git
brew install go
brew install hub
brew install isync
brew install java
brew install jenv
brew install jq
brew install lua
brew install markdown
brew install mpd
brew install ncmpcpp --with-visualizer --with-clock
brew install --HEAD neovim
brew install openssl
brew install openssh
brew install pandoc
brew install peco
brew install perl
brew install python3
brew install rakudo-star # Gotta get that Perl 6 swaaaaaaaaaaaag
brew install rsync
brew install sqlite
brew install ssh-copy-id
brew install tree
brew install https://raw.githubusercontent.com/choppsv1/homebrew-term24/master/tmux.rb
brew install unzip
brew install vim --override-system-vi --with-lua --with-client-server --with-luajit --with-mzscheme --with-python3 --with-tcl
#brew install macvim --override-system-vim --with-lua --with-luajit --HEAD
brew install xpdf
brew install zsh

# Install stuff for Dataforma
brew install java6
brew install mysql55 # Manually symlink files to usr/local

# Install games because I'm not a savage :P

# Because I hate myself
brew install angband
brew install rogue


