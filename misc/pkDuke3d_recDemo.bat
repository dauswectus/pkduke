@echo off
SET oldDir=%CD%

cd %~dp0\gameroot\MyDemos

IF NOT EXIST RDMO%4.DMO GOTO PLAY

ECHO RDMO%4.DMO already exists!
CHOICE /M "Replace RDMO%4.DMO?"
IF ERRORLEVEL 2 GOTO END
cd ..


:PLAY

cd %~dp0\gameroot
..\Release\pkDuke3d.exe /s%1 /v%2 /l%3 /r
copy DEMO1.DMO RDMO%4.DMO
move /Y RDMO%4.DMO MyDemos\


:END

cd %oldDir%
