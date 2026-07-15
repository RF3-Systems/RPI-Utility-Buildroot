THIS_EXTERNAL_PATH := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
BUILDROOT := $(THIS_EXTERNAL_PATH)/buildroot
OUTPUT := $(THIS_EXTERNAL_PATH)/output
BR2_EXTERNAL := $(THIS_EXTERNAL_PATH)/rf3-pi-util-br2ext
DEFCONFIG := rf3_pi4_utility_defconfig

HOST_UID := $(shell id -u)
HOST_GID := $(shell id -g)

# These will never be visible to the docker container, it's just to make the mount directories permissions correct,
# As they are made by you  :)
HOST_CACHE_DIR := $(THIS_EXTERNAL_PATH)/.cache/buildroot-ccache
HOST_DL_DIR := $(THIS_EXTERNAL_PATH)/.cache/buildroot-dl

JOBS := $(shell nproc)

.PHONY: all defconfig build clean menuconfig

all: defconfig build

dirs:
	mkdir -vp $(HOST_CACHE_DIR)
	mkdir -vp $(HOST_DL_DIR)
	mkdir -vp $(OUTPUT)

docker: dirs
	docker compose run --user "$(HOST_UID):$(HOST_GID)" --rm buildroot

MAKE_BUILDROOT = $(MAKE) -C $(BUILDROOT) O=$(OUTPUT) BR2_EXTERNAL=$(BR2_EXTERNAL) -j$(JOBS)

defconfig:
	$(MAKE_BUILDROOT) $(DEFCONFIG)

build:
	$(MAKE_BUILDROOT) 

menuconfig:
	$(MAKE_BUILDROOT) menuconfig

clean:
	$(MAKE_BUILDROOT) clean
