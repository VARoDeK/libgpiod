# This script will work on author's pernal system only. It is for experimental purpose.
set -x

export PATH=$HOME/ExternalPackages/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin:$PATH
./autogen.sh

./configure --enable-tools=yes --prefix=/home/varodek/TI/development/libgpiod_build --host=aarch64-none-linux-gnu

make -j$(nproc)

make install

cp ./copy.sh /home/varodek/TI/development/libgpiod_build
cp ./remove.sh /home/varodek/TI/development/libgpiod_build
