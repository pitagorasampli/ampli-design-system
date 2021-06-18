#!/bin/bash -e

VECTOR_PATH=tokens/src/main/res/drawable
ASSETS_SVG_PATH=assets/images/svg
BUILD_PATH=build
BUILD_ASSETS_PATH=$BUILD_PATH/assets
BUILD_PNG_PATH=$BUILD_ASSETS_PATH/images/png
BUILD_SVG_PATH=$BUILD_ASSETS_PATH/images/svg

svgexport() {
  image=$(basename ${1})
  size=${2}
  imageSize=${3:-''}

  echo
  echo ${@}

  npx svgexport \
    "${ASSETS_SVG_PATH}/${image}" \
    "${BUILD_PNG_PATH}/${image%.*}${imageSize}.png" \
    "${size}"
}

svg2png() {
  find ${ASSETS_SVG_PATH} -name '*.svg' | \
    while read file; do \
      svgexport $file 2x; \
      svgexport $file 4x @2x; \
      svgexport $file 6x @3x; \
    done
}

svg2vector() {
  npx s2v -f ${ASSETS_SVG_PATH} -o ${VECTOR_PATH}
}

svgo() {
  npx svgo -f ${ASSETS_SVG_PATH}
}

copy_svg() {
  cp -rf $ASSETS_SVG_PATH $BUILD_SVG_PATH
}

clean_build() {
  rm -rf ${BUILD_ASSETS_PATH}
  rm -rf ${VECTOR_PATH}
}

create_directories() {
  mkdir -p ${BUILD_PNG_PATH}
  mkdir -p ${VECTOR_PATH}
}

build_svg() {
  clean_build
  create_directories
  svgo
  svg2png
  svg2vector
  copy_svg
}

main() {
  build_svg
}
main
