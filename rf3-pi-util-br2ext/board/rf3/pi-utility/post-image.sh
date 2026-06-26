#!/bin/sh
set -e

"${HOST_DIR}/bin/bmaptool" create \
  -o "${BINARIES_DIR}/sdcard.img.bmap" \
  "${BINARIES_DIR}/sdcard.img"
