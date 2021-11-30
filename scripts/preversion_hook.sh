#!/bin/bash -e

preversion_hook() {
  git fetch --all
  git checkout release
  git pull
  git checkout origin/main -- README.md package.json package-lock.json
  git commit -am "Update README & package.json"
  git checkout origin/main -- assets properties scripts config.json index.js
  git reset HEAD .
}
preversion_hook
