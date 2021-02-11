#!/usr/bin/env bash

# Halt the execution as soon as any line trows non true exit.
set -e
set -x

#==============================================================================

# This script will work on author's pernal system only. It is for experimental purpose.
# this has to be present in the --prefix directory.

sudo cp -r bin/* /run/media/varodek/ROOT/usr/bin
sudo cp -r lib/* /run/media/varodek/ROOT/usr/lib
sudo cp -r include/* /run/media/varodek/ROOT/usr/include

#==============================================================================

#END