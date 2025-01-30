@echo off
setlocal EnableDelayedExpansion

:home
cls
color e
title BatchOptimizer v0.0.3

REM ASCII Art Banner
echo *___________________________BatchOptimizer V0.0.3__________________________*
:: Keep your existing ASCII art here...

REM Menu Options
echo.
echo Select Tools:
echo =============
echo [1] Ping Checker
echo [2] DNS Cleaner
echo [3] SystemInfo Checker 
echo [4] Tasklist
echo [5] Windows Activation Key
echo [UP] Unlimited PingCheck
echo [X] Exit Program
echo.
echo ________________________________________________________Developer@toto

:input
set "ch="
set /p "ch=Enter your choice (1-5, UP, or X to exit): "

REM Input validation
if /i "%ch%"=="x" exit /b
if /i "%ch%"=="up" goto up
if "%ch%"=="1" goto pc
if "%ch%"=="2" goto dns
if "%ch%"=="3" goto cpu
if "%ch%"=="4" goto tsk
if "%ch%"=="5" goto key

echo Invalid choice! Please try again.
timeout /t 2 >nul
goto home

REM Add your label sections here (:pc, :dns, etc.)
:pc
REM Your ping checker code
goto home

:dns
REM Your DNS cleaner code
goto home

:cpu
REM Your SystemInfo code
goto home

:tsk
REM Your tasklist code
goto home

:key
REM Your Windows activation key code
goto home

:up
REM Your unlimited ping check code
goto home