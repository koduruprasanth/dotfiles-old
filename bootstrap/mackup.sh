#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

# Symlink Mackup Configuration
if [[ ! -e "$HOME/.mackup.cfg" ]]; then
  echo "symlinking: $dirname/mackup/.mackup.cfg => $HOME/.mackup.cfg"
  ln -s "$dirname/mackup/.mackup.cfg" "$HOME/.mackup.cfg"
else
  echo "$HOME/.mackup.cfg already exists."
fi
