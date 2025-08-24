@echo off
setlocal EnableDelayedExpansion

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
set /p "ch=Enter your choice (1-5, UP, or X to exit): "

REM Input validation
if /i "%ch%"=="x" exit /b
if /i "%ch%"=="up" goto up
if "%ch%"=="1" goto pc
if "%ch%"=="2" goto dns
if "%ch%"=="3" goto cpu
if "%ch%"=="4" goto tsk
if "%ch%"=="5" goto key

echo.
echo Invalid choice! Please select a valid option (1-5, UP, or X).
echo.
timeout /t 2 >nul
goto home

:pc
echo You have selected Ping Checker
echo Good Ping: Below 200ms
echo Press Enter to proceed:
pause
ping google.com
echo.
echo Back to Homepage
set /p h=Return to Homepage (B): 
cls
goto home

:dns
echo You Have Selected DNS Cleaner
echo *DNS Cleaner - Clean up your DNS for better internet*
set /p l=Press enter to proceed: 
timeout /t 4 /nobreak >nul
ipconfig/flushdns
echo DNS Cleaned
set /p h=Return to Homepage (B): 
cls
goto home

:cpu
echo SystemInfo Checker:
echo *Show all your system information*
pause
systeminfo
set /p n=Return to Homepage (B): 
cls
goto home

:tsk
echo _______________________________ Tasklist: _______________________________________
echo *Display the tasks that are running on your computer in the background*
pause 
tasklist
set /p n=Return to Homepage (B): 
cls
goto home

:key
echo Check Windows Activation Key
pause
wmic path softwarelicensingservice get OA3xOriginalProductKey
set /p n=Return to Homepage (B): 
cls
goto home

:up
echo Unlimited PingCheck:
echo * Pinging unlimited to check your ping until you close *
echo * Good for gamers to check their games such as Dota etc.
pause
ping google.com -t
set /p h=Return to Homepage (B): 
cls
goto home