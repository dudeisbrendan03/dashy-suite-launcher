@echo off
title Dashy quick install
:menu
cls
echo.
echo Select the app you want to install:
echo ==========================================
echo.
echo Dashy
echo Modzilla
echo.
echo ==========================================
echo Please answer Y/N to the following:

set /p App1= Install Dashy?
set /p App2= Install Modzilla?

if /I "%App1%" EQU "Y" goto :Option-1
if /I "%App1%" EQU "N" goto :1
:1
if /I "%App2%" EQU "Y" goto :Option-2
if /I "%App2%" EQU "N" goto :2



:Option-1
echo "THIS WILL NOT WORK YET, NOT ON GITHUB"
::mkdir dashyinstallation
cd dashyinstallation
git init
git pull
node dashyinst.js
goto 1
:Option-2
::mkdir modzillainstallation
git reset
git clone https://github.com/dudeisbrendan03/modzilla.git modzillainstallation
move modzillainst.py modzillainstallation\modzillainst.py
move modzillainst.js modzillainstallation\modzillainstallation.js
cd modzillainstallation
python modzillainst.py
:End

Exit