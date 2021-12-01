#!/bin/bash -e

ZEROHEIGHT_TOKENS_FILENAME=zeroheight.json
ZEROHEIGHT_TOKENS_PATH=properties

download_tokens() {
  curl $ZEROHEIGHT_TOKENS_URL -o $ZEROHEIGHT_TOKENS_PATH/$ZEROHEIGHT_TOKENS_FILENAME
}

main() {
  download_tokens
}
main
