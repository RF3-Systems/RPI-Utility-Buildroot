#!/bin/sh
set -e

BMAP="$HOST_DIR/bin/bmaptool"
SD_IMG="$BINARIES_DIR/sdcard.img"
ZSTD="$HOST_DIR/bin/zstd"

"$BMAP" create --output "$SD_IMG.bmap" "$SD_IMG"

"$ZSTD" --keep --force -10 "$SD_IMG"
