#! /bin/bash

version=$1

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "set_installer_version.sh 'version number e.g. 1.0.0'"
fi

sed -i "s/1.0.0/$version/g" installer/CMakeLists.txt
