#!/bin/bash

read -p "[SSH] Generate new ssh key? (y/n): " response
if test "$response" = "y"; then
	echo ""
	read -p "Enter your e-mail: " ssh_email
	echo ""
    echo "[SSH] Generating key"
    ssh-keygen -t rsa -b 4096 -C $ssh_email
fi
echo ""

echo "[SSH] Adding ssh key to ssh-agent"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo ""

echo "[SSH] Adding key to pasteboard"
pbcopy < ~/.ssh/id_rsa.pub

echo "Add this public key to Github, Gitlab etc. \n"
echo "example: https://github.com/account/ssh \n"
read -p "Press [Enter] to continue"

echo "[SSH] Finished"
echo ""
