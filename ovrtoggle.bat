@echo off
title Oculus VR Service Toggle

net session >nul 2>&1
if %errorlevel% == 0 (
color 02
) else (
color 0c
echo Failure: Current permissions inadequate, please run as administrator.
pause >nul
exit
)

sc config OVRService start= demand >nul
sc query "OVRService" | find "RUNNING" >nul
if %errorlevel% == 1 goto :startq
if %errorlevel% == 0 goto :stopq
goto :error

:startq
echo The Oculus VR Service is not running.
echo Do you wish to start or toggle the Oculus VR Service?
echo                  [1 = Start Service] [2 = Do Nothing]
set /P c=

if /I "%c%" EQU "1" (
net start "OVRService"
goto :end
)
if /I "%c%" EQU "2" exit
cls
goto :startq

:stopq
echo The Oculus VR Service is running.
echo Do you wish to stop the Oculus VR Service?
echo   [1 = Stop Service] [2 = Toggle Service] [3 = Do Nothing]
set /P c=

if /I "%c%" EQU "1" (
net stop "OVRService"
goto :end
)
if /I "%c%" EQU "2"(
net stop "OVRService"
net start "OVRService"
goto :end
)
if /I "%c%" EQU "3" exit
cls
goto :stopq

:toggle


:error
color 0c
echo Error: Unable to verify if the Oculus VR Service is running.
pause >nul
exit

:end
echo Press any key to exit.
pause >nul
exit
