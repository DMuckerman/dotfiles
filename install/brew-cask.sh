#!/bin/sh

# Tap Versions

brew tap caskroom/versions

# Install X11

brew cask install Caskroom/cask/xquartz

# Install apps

brew cask install appcleaner
brew cask install bartender
brew cask install colorpicker-hex
brew cask install doxie
brew cask install dropbox
brew cask install fantastical1
brew cask install fastscripts
brew cask install fluid
brew cask install flux
brew cask install github-desktop
brew cask install google-chrome
brew cask install handbrake
brew cask install hyperswitch
brew cask install intellij-idea
brew cask install iterm2-nightly
brew cask install java
brew cask install java6
brew cask install karabiner
brew cask install keepingyouawake
brew cask install limechat
brew cask install lunchy
brew cask install mysqlworkbench
brew cask install omnioutliner
brew cask install omnipresence
brew cask install openemu
brew cask install quickradar
brew cask install seil
brew cask install skype
brew cask install slate
brew cask install slack
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc
brew cask install vmware-fusion

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook && qlmanage -r
