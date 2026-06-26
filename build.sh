#!/bin/bash

export BR2_EXTERNAL="$PWD/rf3-pi-util-br2ext"

cd buildroot

make rf3_pi4_utility_defconfig
make -j$(nproc)
