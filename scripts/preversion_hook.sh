#!/bin/bash -e

preversion_hook() {
  git fetch --all
  git checkout release
  git pull
  git checkout main -- package.json package-lock.json scripts
  git commit -am "Update package.json & scripts"
  git checkout main -- assets properties config.json index.js
  git reset HEAD .
}
preversion_hook
