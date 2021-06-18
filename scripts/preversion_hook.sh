#!/bin/bash -e

ZEROHEIGHT_TOKENS_FILENAME=zeroheight.json

preversion_hook() {
  git fetch --all
  git checkout release
  git pull
  git checkout origin/main -- package.json package-lock.json scripts
  git commit -am "Update package.json & scripts"
  git checkout origin/main -- assets properties config.json index.js
  git reset HEAD .
  wget -O properties/$ZEROHEIGHT_TOKENS_FILENAME $ZEROHEIGHT_TOKENS_URL
}
preversion_hook
