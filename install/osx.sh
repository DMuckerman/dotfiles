#!/bin/sh

# Install Homebrew & brew-cask
/usr/bin/which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask &> /dev/null
brew install brew-cask &> /dev/null
brew tap caskroom/versions &> /dev/null
brew tap thoughtbot/formulae &> /dev/null

# Install brew & brew-cask packages

#source "$DOTFILES_DIR/install/brew.sh"
#source "$DOTFILES_DIR/install/brew-cask.sh"

# Setup some helpful stuff for go
source "$DOTFILES_DIR/install/go.sh"

# Install Ruby gems (SASS, Compass)

#sudo gem install compass
#sudo gem install lunchy
#sudo gem install pygmentize
#sudo gem install sass
#sudo gem install sass-globbing

# Globally install with npm

#npm install -g bower
#npm install -g grunt
#npm install -g gulp
#npm install -g http-server
#npm install -g nodemon
#npm install -g tldr
#npm install -g spot
#npm install -g svgo
#npm install -g vtop
