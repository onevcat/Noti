#!/bin/sh

export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
brew bundle
sourcery --config ./Sources/$1/sourcery.yml
