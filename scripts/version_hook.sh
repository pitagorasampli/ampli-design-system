#!/bin/bash -e

update_versions() {
  VERSION=$(node -p "require('./package.json').version")

  sed -i -r \
    "s/(s\.version\s+=\s+\")[^\"]+(\")/\1${VERSION}\2/g" \
    Tokens_iOS.podspec

  sed -i -r \
    "s/(versionName\s+\")[^\"]+(\")/\1${VERSION}\2/g" \
    tokens/build.gradle
}

version_hook() {
  update_versions
  npm install
  npm run build
  git add .
}
version_hook
