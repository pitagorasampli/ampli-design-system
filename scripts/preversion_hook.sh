#!/bin/bash -e

ZEROHEIGHT_TOKENS_FILENAME=zeroheight.json
ZEROHEIGHT_TOKENS_URL=https://krotonds.zeroheight.com/api/token_file/70ccb45ceb73/share

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
