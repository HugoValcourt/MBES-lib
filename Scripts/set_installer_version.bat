@echo off

set version=%1

call powershell.exe -Command "& { (Get-Content '%CD%\installer\CMakeLists.txt') -replace '1.0.0', '%version%' | Set-Content '%CD%\installer\CMakeLists2.txt' }"
del /f "installer\CMakeLists.txt"
move "installer\CMakeLists2.txt" "installer\CMakeLists.txt"
