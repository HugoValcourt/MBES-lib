#!/bin/bash

rm -rf installer/build
mkdir -p installer/build

#make pcl-viewer
#make overlap

cd installer/build

cmake ..
cpack
cd ../..
