#!/bin/bash


export ARCH="arm"
export CROSS_COMPILE="arm-linux-gnueabihf-"
export PATH=$PATH:$MY_TOOLCHAIN/bin
make -j8 uImage modules
make INSTALL_MOD_PATH=../modules modules_install

#Delete the symlinks
find ../modules -type l -exec rm -f {} \;

