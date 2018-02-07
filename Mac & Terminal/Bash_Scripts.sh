# Terminal commands for macOS.

# Prevent play/pause button on keyboard & headphones from launching iTunes.
csrutil status
# If SIP enabled, reboot in recovery mode (holding command-r).
csrutil disable
# Reboot.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# Disable Mac OS X slow-motion expose.
cd ~/Library/Preferences
open com.apple.symbolichotkeys.plist
# Change 34, 35, and 37, `enabled` to `NO`, save, & reboot.

# Shorten prefix-name of screenshots.
defaults write com.apple.screencapture name "Pic"

# Show file paths in title bars of Finder windows.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Link OpenEmu App Support to Dropbox.
ln -s ~/Dropbox/Games/OpenEmu ~/Library/Application\ Support/OpenEmu

# Change owner of `/usr/local` to allow NPM to install packaged modules in default location without `sudo`.
sudo chown -R `whoami` /usr/local

# Add `subl` alias to `/usr/local/bin/` pointing to Sublime Text 3 app’s binary file.
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
