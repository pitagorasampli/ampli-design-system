#!/bin/bash -e

preversion_hook() {
  git fetch --all
  git checkout release
  git pull
  git checkout master -- package.json package-lock.json scripts
  git commit -am "Update package.json & scripts"
  git checkout master -- assets properties config.json index.js
  git reset HEAD .
}
preversion_hook
