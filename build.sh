#!/bin/sh

set -e

make -C buildroot \
    O=/work/output \
    BR2_EXTERNAL=../rf3-pi-util-br2ext \
    rf3_pi4_utility_defconfig

make -C buildroot \
    O=/work/output \
    BR2_EXTERNAL=../rf3-pi-util-br2ext \
    -j"$(nproc)"
