#!/usr/bin/env bash
set -euo pipefail

echo 'Customising macOS configuration...'

# Set menu clock
defaults write com.apple.menuextra.clock.plist DateFormat -string "d MMM HH:mm:ss"
defaults write com.apple.menuextra.clock.plist ShowSeconds -bool true
defaults write com.apple.menuextra.clock.plist Show24Hour -bool true
defaults write com.apple.menuextra.clock.plist ShowDate -int 1
killall ControlCenter

# hide the dock
defaults write com.apple.dock autohide -bool true
killall Dock

# Set Finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# Reset Dock contents
# TODO doesn't seem to work consistently
dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
for app in iTerm 'Firefox Developer Edition' 'Google Chrome' Slack Signal WhatsApp Spotify; do
    dockutil --add "/Applications/$app.app" --restart --section apps
done
dockutil --add /Applications --display folder --no-restart --section others --sort name --view grid
dockutil --add '~/Downloads' --display folder --restart --section others --sort name --view fan

# Force Preference Refresh
killall -u $USER cfprefsd
