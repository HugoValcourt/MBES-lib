@echo off

set version=%1

if "%~1"=="" goto noArguments

call powershell.exe -Command "& { (Get-Content '%~1\installer\CMakeLists.txt') -replace '1.0.0', '%version%' | Set-Content '%~1\installer\CMakeLists2.txt' }"
call del /f "%~1\installer\CMakeLists.txt"
call rename "%~1\installer\CMakeLists2.txt" "installer\CMakeLists.txt"

:noArguments
@echo "Missing version argument: set_installer_version.bat [VERSION]"
@echo "Now closing."
exit /B 1
goto:eof
