# This script will work on author's pernal system only. It is for experimental purpose.
# this has to be present in the --prefix directory.

set -x

cd /run/media/varodek/ROOT/usr/bin
sudo rm $(ls | grep gpio)

cd /run/media/varodek/ROOT/usr/include
sudo rm $(ls | grep gpio)

cd /run/media/varodek/ROOT/usr/lib
sudo rm $(ls | grep gpio)
sudo rm -rf pkgconfig
