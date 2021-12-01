#!/bin/bash -e

postversion_hook() {
  # after the 'version_hook', tag and commit were generated
  git push --follow-tags origin release
  # update the 'main' branch with the new version
  git checkout main
  git pull
  git checkout origin/release -- package.json package-lock.json
  git commit -am "Update version in package.json"
  git push origin main
}
postversion_hook
