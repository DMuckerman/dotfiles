#!/bin/sh

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Set the magnification size of Dock items to 42 pixels
defaults write com.apple.dock largesize -float 48

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Safari Technology Preview.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Fantastical 2.app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Discord.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Emacs.app"
dockutil --no-restart --add "/Applications/Gnucash.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Xcode.app"

dockutil --no-restart --add "$HOME/Downloads"

killall Dock
