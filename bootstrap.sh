#!/bin/sh

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed !"
fi

echo "Updating homebrew recipes..."
#brew update

echo "Installing formulas..."
formulas=(
  awscli
  caskroom/cask/brew-cask
  coreutils
  findutils
  git
  mackup
  python
  python3
  tmux
  wget
  youtube-dl
)

brew install ${formulas[@]}

brew cleanup

echo "Installing applications..."
apps=(
  alfred
  atom
  betterzipql
  caffeine
  dash
  emacs
  evernote
  firefox
  flux
  ghc
  google-chrome
  google-drive
  iterm2
  java
  lastpass
  mplayerx
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlstephen
  quicklook-csv
  quicklook-json
  real-vnc
  shiftit
  vlc
)

brew cask install ${apps[@]}

echo "Installing fonts..."
brew tap caskroom/fonts

# fonts https://github.com/caskroom/homebrew-fonts/tree/master/Casks
fonts=(
  font-clear-sans
  font-m-plus
  font-roboto
)

# install fonts
brew cask install ${fonts[@]}
