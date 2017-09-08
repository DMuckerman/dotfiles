#!/bin/sh

# Tap Versions

brew tap caskroom/versions

# Install X11

brew cask install Caskroom/cask/xquartz

# Install apps

brew cask install appcleaner
brew cask install bartender
brew cask install bbedit
brew cask install discord
brew cask install dropbox
brew cask install emacs
brew cask install fantastical
brew cask install fastscripts
brew cask install fetch
brew cask install finicky
brew cask install fluid
brew cask install flux
brew cask install handbrake
brew cask install iterm2-nightly
brew cask install imageoptim
brew cask install java
brew cask install karabiner
brew cask install launchrocket
brew cask install lunchy
brew cask install multipatch
brew cask install openemu
brew cask install quickradar
brew cask install safari-technology-preview
brew cask install seil
brew cask install sequel-pro
brew cask install slate
brew cask install slack
brew cask install superduper
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc
brew cask install vmware-fusion
brew cask install xld

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook && qlmanage -r
