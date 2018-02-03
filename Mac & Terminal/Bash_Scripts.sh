# Terminal commands for Mac OS X.

# Disable Mac OS X slow-motion expose.
cd ~/Library/Preferences 
open com.apple.symbolichotkeys.plist
# Change 34, 35, and 37, `enabled` to `NO`, save, & reboot.

# Shorten prefix-name of screenshots.
defaults write com.apple.screencapture name "Pic"

# Show file paths in title bars of Finder windows.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Prevent apps (e.g. TextEdit, QuickTime) from disappearing from application switcher when no document is open within them.
# NOTE: Must manually quit app once for this to take effect. 
defaults write -g NSDisableAutomaticTermination -bool TRUE

# Link OpenEmu App Support to Dropbox.
ln -s ~/Dropbox/Games/OpenEmu ~/Library/Application\ Support/OpenEmu

# Prevent play/pause button on headphones from launching iTunes.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# Set movie files to play upon opening in QuickTime.
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen 1

# Change owner of `/usr/local` to allow NPM to install packaged modules in default location without `sudo`. 
sudo chown -R `whoami` /usr/local

# Add `subl` alias to `/usr/local/bin/` pointing to Sublime Text 3 app’s binary file.
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# Disable "Clamshell Mode" (return pre-Lion behavior of closing lid to sleep when connected to external monitor).
# NOTE: Steps below no longer work as of Yosemite (Mac OS X 10.1).
# Steps (would this work with only reboot, forget disconnect/reconnect?): 
# Disconnect external monitor and MacBook power.
sudo nvram boot-args="iog=0x0"
# Restart MacBook.
# Reconnect MacBook power and external monitor. 

# Add custom ringtones to FaceTime.
# NOTE: Must disable `csrutil` first.
cd /System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/
sudo cp path/to/file .
sudo chown root file
cd /System/Library/PrivateFrameworks/ToneKit.framework/Versions/A/Resources/
# Edit `TKRingtones.plist` to add ringtone names. 
