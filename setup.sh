#!/bin/bash

process_option() {
  case $1 in
    'all')
      source scripts/clt.sh
      source scripts/ssh.sh
      source scripts/brew.sh
      source scripts/git.sh
      source scripts/apps.sh
      break;;
    'clt')
      source scripts/clt.sh
      break;;
    'ssh')
      source scripts/ssh.sh
      break;;
    'brew')
      source scripts/brew.sh
      break;;
    'git')
      source scripts/git.sh
      break;;
    'apps')
      source scripts/apps.sh
      break;;
    'q')
      break;;
    *)
      break;;
  esac
}

while true; do
  if [[ $# == 0 ]]; then
    echo ""
    echo "- - - - - - - - - - - - - - - - - -"
    echo "             MACOS SETUP           "
    echo ""
    echo "             Martin Stork          "
    echo "- - - - - - - - - - - - - - - - - -"
    echo ""
    echo "Options:"
    echo ""
    echo "      all:  Install and configure everything below"
    echo "      clt:  Install command line tools (xcode)"
    echo "      ssh:  Configure ssh"
    echo "     brew:  Install brew, brew cask and brew mas"
    echo "      git:  Install and configure git"
    echo "     apps:  Install applications"
    echo "            - glances, neofetch, mas, zsh + additions,"
    echo "              firefox, insomnia, intellij(CE), bitwarden,"
    echo "              dropbox, docker, spotify, skype, iterm2,"
    echo "              amphetamine, duckduckgo privacy essentials,"
    echo "              ohmyzsh"
    echo ""
    echo "        q:  Quit."
    echo ""
    read -p "Enter option: " response
    echo ""
    process_option $response
  else
    process_option $1
  fi
done
