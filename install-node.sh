#!/bin/sh

# cd into your home directory
cd ~/

# Install NVM with curl
curl https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | bash

# Make the `nvm` command available to your session
source ~/.bashrc
source ~/.zshrc

# Install the latest stable release of node.js
nvm install stable

# Make installed version of node the default
nvm alias default node
