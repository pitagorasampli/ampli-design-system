#!/bin/bash -e

ZEROHEIGHT_TOKENS_FILENAME=zeroheight.json


downloadtokens_hook() {
  curl $ZEROHEIGHT_TOKENS_URL -o properties/$ZEROHEIGHT_TOKENS_FILENAME
}
downloadtokens_hook
