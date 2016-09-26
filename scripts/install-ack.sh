#!/bin/bash

InstallAck() {
  echo 'Installing Ack
  '
  sudo curl http://beyondgrep.com/ack-2.14-single-file > ~/bin/ack && sudo chmod
  0755 ~/bin/ack
}

if hash ack 2>/dev/null; then
  InstallAck
else
  echo 'Ack already installed
  '
fi
