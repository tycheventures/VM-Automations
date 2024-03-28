@echo off
echo Copy project name from Asana.
echo ...
set /p "foldername=Enter new project domain name :"
echo ...
echo Creating project folders...
mkdir %workdir%\%foldername%
mkdir %workdir%\%foldername%\backup
mkdir %workdir%\%foldername%\data
mkdir %workdir%\%foldername%\design
mkdir %workdir%\%foldername%\themes
mkdir %workdir%\%foldername%\plugins
mkdir %workdir%\%foldername%\www