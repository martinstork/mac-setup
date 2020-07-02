#!/bin/bash

if test ! $(which brew); then
  echo "[GIT] brew (homebrew) is required"

  read -p "[GIT] Install brew now? (y/n): " brew_response
    if test "$brew_response" = "y"; then
    source scripts/brew.sh
    else
    exit
    fi
fi

echo "[GIT] Installing git"
brew install git

read -p "[GIT] Configure git for Martin? (y/n): " git_response
    if test "$git_response" = "y"; then
    git config --global user.name "Martin"
    git config --global user.email martin.stork95@gmail.com
    
    else
    echo "Congfigure your git user.name and user.email: \n"
    read -p "Enter your name: " git_name
    read -p "Enter your e-mail: " git_email

    git config --global user.name "$git_name"
    git config --global user.email $git_email

    echo "You can manually change your name and email with:"
    echo "git config --global user.name [YOUR NAME]"
    echo "git config --global user.email [YOUR EMAIL]"

    read -p "Press [Enter] continue"
    fi

echo "[GIT] Finished"
echo ""
