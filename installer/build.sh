#!/bin/bash

rm -rf installer/build
mkdir -p installer/build

#make pcl-viewer
#make overlap

cd installer/build

cmake ..
cpack
./MBES-lib-1.0.0-Linux.run
cd ../..
