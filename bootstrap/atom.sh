#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

# Atom packages
atom=(
  atom-beautify
  cmd-9
  color-picker
  css-comb
  #easy-motion
  editor-stats
  emmet
  git-history
  highlight-selected
  #image-view
  #inc-dec-value
  key-peek
  language-jade
  linter
  #markdown-preview
  merge-conflicts
  sort-lines
  Sublime-Style-Column-Selection
  npm-install
  react
  #vim-mode
)

echo "Installing atom plugins..."
apm install ${atom[@]}
