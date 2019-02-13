@echo off
Title Your Server name  
color 1f 
::################# Change CD path to the root folder of Arma 
cd C:\Servers\Private\ 
timeout 1 /nobreak
cls
SETLOCAL EnableDelayedExpansion
echo Starting Private server Headlless Client 
for /f "Tokens=* Delims=" %%x in (Modlist.txt) do set Mod=!Mod!%%x;
start "arma3server_x64.exe"  "arma3server_x64.exe"  -connect=localhost -port=xxxx  -client -nosound -password="xxxx" "-mod=%Mod%"  

