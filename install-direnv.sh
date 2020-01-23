#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.20.0"

if [ "$1" != "" ]; then
    VERSION="$1"
else
    VERSION=$FALLBACK_VERSION
fi

URL=https://github.com/direnv/direnv/releases/download/v$VERSION/direnv.linux-amd64

TARGET=/usr/local/bin/direnv

# install curl
sudo apt install -yqqq curl

# install direnv
sudo curl -L $URL -o $TARGET

sudo chmod +x $TARGET

echo
direnv --version

echo
echo '"direnv" is now on the path'

echo
echo $'Don\'t forget to hook it into your shell!'
echo 'Here is how: https://github.com/direnv/direnv/blob/master/docs/hook.md'
