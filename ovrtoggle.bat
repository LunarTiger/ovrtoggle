@echo off
title Oculus VR Service Toggle
color 02

echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorlevel% == 0 (
echo Success: Administrative permissions confirmed.
echo --------------------------
) else (
color 0c
echo Failure: Current permissions inadequate, please run as administrator.
pause >nul
exit
)

:start
sc config OVRService start= demand >nul
sc query "OVRService" | find "RUNNING" >nul
if %errorlevel% == 1 goto :startq
if %errorlevel% == 0 goto :stopq
goto :error

:startq
echo The Oculus VR Service is not running.
echo Do you wish to start the Oculus VR Service?
echo                                 [1 = Yes, start service] [2 = No, keep service stopped]
set /P c=

if /I "%c%" EQU "1" goto :start
if /I "%c%" EQU "2" exit
cls
goto :startq

:start
net start "OVRService"
goto :end

:stopq
echo The Oculus VR Service is running.
echo Do you wish to stop the Oculus VR Service?
echo                                 [1 = Yes, stop service] [2 = No, keep service running]
set /P c=

if /I "%c%" EQU "1" goto :stop
if /I "%c%" EQU "2" exit
cls
goto :stopq

:stop
net stop "OVRService"
goto :end

:error
color 0c
echo Error: Unable to verify if the Oculus VR Service is running.
pause >nul
exit

:end
echo Re-Run?
echo   [1 = Yes] [2 = No]
set /P c=

if /I "%c%" EQU "1" (
cls
goto :start
)
if /I "%c%" EQU "2" exit
cls
goto :end
