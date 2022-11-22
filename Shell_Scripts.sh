### Terminal commands for macOS.
## Double-hash comments are no longer used.

## Disable macOS slow-motion expose.
## cd ~/Library/Preferences
## open com.apple.symbolichotkeys.plist
## Change 34, 35, and 37, `enabled` to `NO`, save, & reboot.

## Disable macOS auto-quit background Apple apps.
## defaults write -g NSDisableAutomaticTermination -bool TRUE

# Show file paths in title bars of Finder windows.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

## Link OpenEmu App Support to Dropbox.
## ln -s ~/Dropbox/Games/OpenEmu ~/Library/Application\ Support/OpenEmu

## Change owner of `/usr/local` to allow NPM to install packaged modules in default location without `sudo`.
## Reboot holding command-r, run `csrutil disable` in Recovery Terminal, reboot.
## sudo chown -R `whoami` /usr/local
## Reboot in Recovery and run `csrutil enable`.

# Add `subl` alias to `/usr/local/bin/` pointing to Sublime Text 3 app’s binary file.
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

## Prevent Mail app attachments previewing inline.
## Must grant Terminal "Full Disk Access" in Syst Prefs first.
## defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes

## If not done, take ownership of directory for NPM installations:
## sudo chown -R "$USER":admin /usr/local/*

# If not done, install Brew:
# Per instructions at: https://brew.sh/

# If not done, install Node:
brew install node

## If not done, install NPM:
## brew install npm

## If not done, install Git:
## brew install git

## If not done, install Ruby:
## brew install ruby

# If not done, install Ruby gems for Sublime:
sudo gem install sass

# If not done, install NPM packages for Sublime:
npm install -g babel
npm install -g eslint
npm install -g htmlhint
npm install -g jshint
npm install -g postcss stylelint
npm install -g stylelint-config-standard
npm install -g stylelint-order

# If not done, install other NPM packages:
npm install -g svgo

# If not done, install AWS CLI:
# Per instructions at: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html

# Update Brew:
brew update

# Upgrade all Brew packages:
brew upgrade

# Update all global NPM packages:
npm update -g
