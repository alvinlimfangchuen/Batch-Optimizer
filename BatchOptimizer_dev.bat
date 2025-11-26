@echo off
setlocal

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Note: Some features may require administrator privileges
    timeout /t 2 >nul
)

:home
cls
color e
title BatchOptimizer v0.0.3

echo *___________________________BatchOptimizer V0.0.3__________________________*
echo 0000000000    00          00       000000                
echo 0         00  00 00       0      00      00                      
echo 0         00  00  00      00    00        00                           
echo 0         00  00   00     00    00        00                                    
echo O         00  00    00    00    00        00                                          
echo 0         00  00     00   00    000000000000                                                        
echo 0         00  00      00  00    00        00                                          
echo 0         00  00       00 00    00        00                                     
echo 0        00   00        0000    00        00               
echo 000000000     00         000    00        00 Project PRESENTS

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
set /p "ch=Enter your choice: "

REM Input validation
if /i "%ch%"=="x" exit /b
if /i "%ch%"=="up" goto up
if "%ch%"=="1" goto ping_checker
if "%ch%"=="2" goto dns
if "%ch%"=="3" goto cpu
if "%ch%"=="4" goto tsk
if "%ch%"=="5" goto key

echo.
echo Invalid choice! Please select a valid option (1-5, UP, or X).
echo.
timeout /t 2 >nul
goto home

:ping_checker
echo You have selected Ping Checker
echo Good Ping: Below 200ms
pause
ping google.com
echo.
pause
cls
goto home

:dns
echo You Have Selected DNS Cleaner
echo *DNS Cleaner - Clean up your DNS for better internet*
pause
ipconfig/flushdns
echo DNS Cleaned
echo.
pause
cls
goto home

:cpu
echo SystemInfo Checker:
echo *Show all your system information*
pause
systeminfo
echo.
pause
cls
goto home

:tsk
echo _______________________________ Tasklist: _______________________________________
echo *Display the tasks that are running on your computer in the background*
pause
tasklist
echo.
pause
cls
goto home

:key
echo Check Windows Activation Key
pause
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo.
pause
cls
goto home

:up
echo Unlimited PingCheck:
echo * Pinging google.com until you stop it (Ctrl+C).
echo * Good for gamers to monitor their connection.
pause
echo.
echo Press Ctrl+C to stop pinging and return to the menu.
ping google.com -t
echo.
echo Ping stopped.
pause
cls
goto home