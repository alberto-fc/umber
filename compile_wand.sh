#!/bin/bash

function subir 
{
rsync -avz arch/arm/boot/uImage 192.168.1.173:/boot
rsync -avz ../modules/lib/modules/3.0.35* 192.168.1.173:/lib/modules
exit
}

export ARCH="arm"
export CROSS_COMPILE="arm-linux-gnueabihf-"
export PATH=$PATH:$MY_TOOLCHAIN/bin
make -j8 uImage modules
make INSTALL_MOD_PATH=../modules modules_install

#Delete the symlinks
find ../modules -type l -exec rm -f {} \;

read -p "Subir? " question
case $question in
	[YySs]* ) subir;;
	[Nn]* ) exit;;
	* ) exit;;
esac
