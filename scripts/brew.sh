#!/bin/bash

if test ! $(which brew); then
  echo "[BREW] Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "[BREW] Updating homebrew"
brew update

echo "[BREW] Installing brew cask (for GUI applications)"
brew install caskroom/cask/brew-cask

echo "[BREW] Installing brew mas (for Mac Application Store apps)"
brew install mas

echo "[BREW] Finished"
echo ""
