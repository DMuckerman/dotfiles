#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "~/Applications/Google Chrome.app"
dockutil --no-restart --add "~/Applications/Mailbox (Beta).app"
dockutil --no-restart --add "/Applications/Messages.app"
dockutil --no-restart --add "~/Applications/iTerm.app"
dockutil --no-restart --add "~/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "/Applications/Tweetbot.app"

killall Dock
