#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.23.1"
VERSION="${1:-$FALLBACK_VERSION}"
SOURCE=https://github.com/direnv/direnv/releases/download/v$VERSION/direnv.linux-amd64
TARGET=/usr/local/bin/direnv

# install curl
sudo apt install -yqqq curl

# install direnv
sudo curl -L $SOURCE -o $TARGET

sudo chmod +x $TARGET

echo
direnv --version

echo
echo '"direnv" is now on the path'

echo
echo $'Don\'t forget to hook it into your shell!'
echo 'Here is how: https://github.com/direnv/direnv/blob/master/docs/hook.md'
