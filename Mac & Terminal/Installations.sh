# Install latest Node & Node's latest NPM:
# https://nodejs.org/

# Update NPM (Node's download isn't always latest):
npm i -g npm

# If not done, install Brew:
# https://brew.sh/

# Update Brew:
brew update

# Install latest Git:
# https://git-scm.com/downloads

# If not done, install Ruby:
brew install ruby

# Upgrade Ruby:
brew upgrade ruby

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

# Update all global NPM packages:
npm update -g .
