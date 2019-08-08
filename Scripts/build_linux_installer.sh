#!/bin/bash

rm -rf installer/build
rm -rf installer/build/viewer
mkdir -p installer/build
mkdir -p installer/build/viewer

#make pcl-viewer
#make overlap

cd installer/build/viewer

cmake -DCMAKE_INSTALL_PREFIX=$PWD/../viewer ../../../src/examples/viewer
make install
chmod +x viewer
#rm -rf cmake*
#rm -rf CMake*
#rm install_*
#rm -rf bin

#cd ../
#
#cmake -D CMAKE_PREFIX_PATH=/usr/include/boost ..
#cpack
#cd ../..
