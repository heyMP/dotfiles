#!/bin/sh

InstallNode() {
  echo 'Installing node.js
  '
  bash install-node.sh
}

InstallUngit() {
  echo 'Installing Ungit
  '
  npm install -g ungit
}

if hash npm 2>/dev/null; then
  InstallUngit
else
  InstallNode
  InstallUngit
fi
