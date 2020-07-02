#!/bin/bash

if test ! $(which brew); then
  echo "[APPS] brew (homebrew) is required"

  read -p "[APPS] Install brew now? (y/n): " brew_response
    if test "$brew_response" = "y"; then
    source scripts/brew.sh
    else
    exit
    fi
fi

echo "[APPS] Installing applications"

# Text
brew install glances
brew install neofetch
brew install mas
brew install zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions

# GUI
brew cask install firefox
brew cask install insomnia
brew cask install intellij-idea-ce
brew cask install bitwarden
brew cask install dropbox
brew cask install docker
brew cask install spotify
brew cask install skype
brew cask install iterm2

# MAS
mas install 937984704 #Amphetamine
mas install 1482920575 #DuckDuckGo Privacy Essentials

# SH CURL
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #OhMyZSH
