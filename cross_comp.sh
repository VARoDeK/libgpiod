#!/usr/bin/env bash

# Halt the execution as soon as any line trows non true exit.
set -e


#==============================================================================

if [ "$1" == "" ] ;
then
        echo "Choose one of: [build, install]"
        exit 0
fi

#==============================================================================

# Change the export path for your system.

# Export path to Arm cross compiler.
if ! [[ $PATH == *"aarch64-none-linux-gnu"* ]] ;
then
        ##echo "exporting path"
        export PATH=$HOME/ExternalPackages/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$PATH
fi

#==============================================================================

# Show each command before executing it.
set -x

if [ "$1" == "build" ] ;
then
	./autogen.sh

	# Change prefix folder ccording to your system
	./configure --enable-tools=yes \
	--prefix=/home/varodek/TI/development/libgpiod_build \
	--host=aarch64-none-linux-gnu

	make -j"$(nproc)"

        exit 0

elif [ "$1" == "install" ] ;
then
	make install

	# Change these folders according to your system. Same as --prefix in install
	cp ./copy.sh /home/varodek/TI/development/libgpiod_build
	cp ./remove.sh /home/varodek/TI/development/libgpiod_build

	echo ""
	echo "Go to insatll folder and run 'copy.sh' to install binaries at your location"
	echo "Go to install folder and run 'remove.sh to clear the installed \
	      binaries at your location'"

	exit 0

else
        echo "Choose one of: [build, install]"
        exit 0

fi

#==============================================================================

#End
