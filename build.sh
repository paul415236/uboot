#!/bin/bash

PWD=$(pwd)

TOOLCHAIN=$PWD/tools/gcc-linaro-arm-linux-gnueabihf-raspbian
CROSS=arm-linux-gnueabihf-

UBOOT=u-boot-2017.09
TARGE_CONFIG=rpi_2_defconfig

export PATH=$TOOLCHAIN/bin:$PATH

cd $UBOOT
make rpi_2_defconfig
make CROSS_COMPILE=arm-linux-gnueabihf-
