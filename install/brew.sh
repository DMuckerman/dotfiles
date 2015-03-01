#!/bin/sh

# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install GNU packages (and override OSX version)

brew install bash-completion
brew install coreutils
brew install dockutil
brew install git
brew install gnu-sed —with-default-names
brew install grep —with-default-names
brew install hub
brew install jq
brew install peco
brew install perl
brew install python
brew install ssh-copy-id
brew install svn
brew install tree
brew install vim
brew install wget
