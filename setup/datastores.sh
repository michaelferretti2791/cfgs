#!/usr/local/bin/env bash

# Install command-line tools using Homebrew.

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

#### Brew Base Packages
# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

################################
#### Brew Data Stores
################################
brew install mysql
brew install postgresql
brew install mongo
brew install redis
brew install elasticsearch

#### Brew Data Store Tools
brew install caskroom/cask/brew-cask
brew cask install --appdir="/Applications" mysqlworkbench

######## Create a Python3 data environment
# mkvirtualenv --python=/usr/local/bin/python3 py3-data
# workon py3-data

######## Install Python data modules
# pip install numpy
# pip install scipy
# pip install matplotlib
# pip install pandas
# pip install sympy
# pip install nose
# pip install unittest2
# pip install seaborn
# pip install scikit-learn
# pip install "ipython[all]"
# pip install bokeh
# pip install Flask
# pip install sqlalchemy
# pip install mysqlclient
# pip install datashape
# pip install odo

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

brew update && brew prune && brew upgrade brew-cask && brew cleanup && brew cask cleanup
