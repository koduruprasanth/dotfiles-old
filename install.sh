#!/usr/bin/env bash

#http://www.tldp.org/LDP/abs/html/options.html
set -eu

dirname=$(dirname $(realpath $0))
echo "dirname = $dirname"

sh $dirname/bootstrap/homebrew.sh
sh $dirname/bootstrap/mackup.sh
