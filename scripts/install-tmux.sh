#!/bin/bash

InstallTmux() {
  echo 'Installing tmux...
  '
  sudo yum install tmux
}

if type tmux 2>/dev/null; then
  echo 'Tmux already installed
  '
else
  InstallTmux
fi
