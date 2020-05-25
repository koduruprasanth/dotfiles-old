#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

formulas=(
  #awscli
  #bash
  coreutils
  findutils
  fzf
  git
  mackup
  mas
  #python
  #python3
  tmux
  wget
  zplug
)

apps=(
  1password
  alfred
  firefox
  # flux
  # google-chrome
  # google-drive
  iterm2
  jetbrains-toolbox
  karabiner-elements
  microsoft-edge
  sizeup
  visual-studio-code
  homebrew/cask-fonts/font-jetbrains-mono
)

taps=(
  #caskroom/versions
  #caskroom/fonts
)

# Check for Homebrew,
# Install if we don't have it
homebrew_install() {
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew already installed !"
fi
}

homebrew_tap() {
  echo "Tapping..."
  #brew tap ${taps[@]}
}

homebrew_install_formulae() {
  echo "Installing formulas..."
  brew install ${formulas[@]}
}

homebrew_install_apps() {
  echo "Installing applications..."
  brew cask install ${apps[@]}
}

homebrew_cleanup() {
  echo "Running brew cleanup..."
  brew cleanup
}

homebrew_install
homebrew_tap
homebrew_install_formulae
homebrew_install_apps
homebrew_cleanup
