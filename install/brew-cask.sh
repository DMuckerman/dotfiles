#!/bin/sh

# Tap Versions

brew tap caskroom/versions

brew cask install Caskroom/cask/osxfuse
brew cask install Caskroom/cask/xquartz
brew cask install appcleaner
brew cask install bartender
brew cask install colorpicker-hex
brew cask install doxie
brew cask install dropbox
brew cask install emacs
brew cask install fantastical1
brew cask install fluid
brew cask install flux
brew cask install github-desktop
brew cask install google-chrome
brew cask install handbrake
brew cask install java6
brew cask install intellij-idea
brew cask install iterm2-nightly
brew cask install java
brew cask install karabiner
brew cask install keepingyouawake
brew cask install microsoft-office
brew cask install omnioutliner
brew cask install omnipresence
brew cask install openemu
brew cask install parallels-desktop
brew cask install quickradar
brew cask install seil
brew cask install sizeup
brew cask install skype
brew cask install slack
brew cask install the-unarchiver
brew cask install vlc

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook && qlmanage -r
