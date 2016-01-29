#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

formulas=(
  android-sdk
  #awscli
  bash
  caskroom/cask/brew-cask
  coreutils
  findutils
  git
  gradle
  mackup
  #python
  #python3
  tmux
  #unison
  wget
  #youtube-dl
)

apps=(
  1password
  alfred
  atom
  android-studio
  #betterzipql
  caffeine
  dash
  dropbox
  #emacs
  evernote
  firefox
  flux
  #ghc
  google-chrome
  google-drive
  iterm2
  java
  java7
  #lastpass
  #mplayerx
  #qlcolorcode
  #qlimagesize
  #qlmarkdown
  #qlstephen
  #quicklook-csv
  #quicklook-json
  #real-vnc
  #rescuetime
  shiftit
  tcl
  vlc
)

taps=(
  caskroom/versions
  #caskroom/fonts
)

# Check for Homebrew,
# Install if we don't have it
homebrew_install() {
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed !"
fi
}

homebrew_tap() {
  brew tap ${taps[@]}
}

homebrew_install_formulae() {
  echo "Installing formulas..."
  brew install ${formulas[@]}
}

homebrew_install_apps() {
  echo "Installing applications..."
  brew cask install ${apps[@]}
}

homebrew_install_fonts() {
  echo "Installing fonts..."
  brew cask install ${fonts[@]}
}

homebrew_cleanup() {
  echo "Running brew cleanup..."
  brew cleanup
}

homebrew_install
homebrew_tap
homebrew_install_formulae
homebrew_install_apps
#homebrew_install_fonts
homebrew_cleanup
