# If not done, take ownership of directory for NPM installations:
sudo chown -R "$USER":admin /usr/local/*

# If not done, install Brew:
# https://brew.sh/

# If not done, install Node:
brew install node

# If not done, install Git:
brew install git

# If not done, install Ruby:
brew install ruby

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
# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html

# Update Brew:
brew update

# Upgrade all Brew packages:
brew upgrade

# Update all global NPM packages:
npm update -g .
