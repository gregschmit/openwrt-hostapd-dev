#!/bin/sh

STAGE="$(pwd)/openwrt/staging_dir"
LIBS="$STAGE/target-x86_64_musl/usr/lib:$STAGE/toolchain-x86_64_gcc-14.3.0_musl/lib"
PROG="./openwrt/build_dir/target-x86_64_musl/ubus-2025.07.02~5952b48e/ubusd"

sudo LD_LIBRARY_PATH="$LIBS:$LD_LIBRARY_PATH" $PROG "$@"
