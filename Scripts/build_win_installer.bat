@echo off

set version=%1
set installer_dir="installer"
set installer_build_dir="installer\build"

call Scripts\set_installer_version.bat %version%

make
make pcl-viewer
make overlap

call Scripts\sign_exes.au3

if exist %installer_build_dir% rmdir /s /q %installer_build_dir%
if not exist %installer_build_dir% mkdir %installer_build_dir%
cd %installer_build_dir%

cmake ..
cmake --build . --config Release
cpack
cd ..\..

call Scripts\sign_installer.au3 %version%

::After this, i nthe pipeline, The installer should be archived
::(installer\build\MBES-lib-VERSION-win32.exe)
