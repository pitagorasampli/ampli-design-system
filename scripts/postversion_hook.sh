#!/bin/bash -e

postversion_hook() {
  git push --follow-tags origin release
}
postversion_hook
