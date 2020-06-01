# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update
brew upgrade

echo "------------------------------"
echo "Installing Node.js From Brew"
echo "------------------------------"
# Install Node.js
brew install node

echo "------------------------------"
echo "Installing NPM Packages"
echo "------------------------------"
#npm install -g coffee-script
#npm install -g grunt-cli
npm install -g jshint
npm install -g jsdom
npm install -g graphicsmagick
npm install -g marked
npm install -g restify
npm install -g angular
npm install -g webpack
npm install -g lodash
npm install -g morgan
npm install -g less
npm install -g pug
npm install -g karma
npm install -g react
npm install -g bower
npm install -g hapi
npm install -g nodemailer
npm install -g passport
npm install -g cheerio
npm install -g underscore
npm install -g mocha
npm install -g commander
npm install -g socket.io
npm install -g pm2
npm install -g grunt-cli
npm install -g browserify
npm install -g request
npm install -g async.js
npm install -g express
npm install -g request
#gem install jekyll
echo "------------------------------"
echo "Cleaning Up ..."
echo "------------------------------"
# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

brew update && brew prune && brew upgrade && brew cleanup && brew cask cleanup
