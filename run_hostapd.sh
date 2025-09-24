#!/bin/sh

# First, create symlink for multicall binary with:
# ln -s ./openwrt/build_dir/target-x86_64_musl/hostapd-wpad-basic-mbedtls/hostapd-2025.08.26~ca266cc2/wpad hostapd

STAGE="$(pwd)/openwrt/staging_dir"
LIBS="$STAGE/target-x86_64_musl/usr/lib:$STAGE/toolchain-x86_64_gcc-14.3.0_musl/lib"

sudo LD_LIBRARY_PATH="$LIBS:$LD_LIBRARY_PATH" ./hostapd ~/hostapd-test.conf "$@"
