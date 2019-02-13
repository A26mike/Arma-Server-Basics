@echo off
Title Private Server 
color 1f 
::################# Change CD path to the root folder of Arma, Change Port and server mods to own settings 
cd C:\Servers\Private\
echo Deleting old mod List
del /s Modlist.txt
timeout 5 /nobreak
cls 
echo Creating new mod list  
for /d %%D in (M\*.*) do (echo %%~fD>> Modlist.txt)
timeout 5 /nobreak
cls
SETLOCAL EnableDelayedExpansion
echo Starting Private Server
for /f "Tokens=* Delims=" %%x in (Modlist.txt) do set Mod=!Mod!%%x;
start arma3server_x64.exe -port=xxxx -bandwidthAlg=2 -config=server.cfg -cfg=basic.cfg -profiles=profiles -filePatching -autoInit "-servermod=C:\Mods\@16;C:\Mods\@17" "-mod=%Mod%" 
timeout 5 /nobreak
