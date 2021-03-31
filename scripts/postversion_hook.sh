#!/bin/bash -e

postversion_hook() {
  git push --follow-tags origin release
  git checkout main
  git pull
  git checkout origin/release -- package.json
  git commit -am "Update version in package.json"
  git push origin main
}
postversion_hook
