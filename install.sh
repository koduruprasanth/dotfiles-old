#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

dirname=$(dirname $(realpath $0))
echo "dirname = $dirname"

# OSX specific
sh $dirname/bootstrap/homebrew.sh
sh $dirname/bootstrap/mas.sh
sh $dirname/bootstrap/osx.sh


# OSX/Linux
sh $dirname/bootstrap/sdkman.sh
#sh $dirname/bootstrap/mackup.sh

# Work specific setup
# sh $dirname/bootstrap/toolbox.sh
