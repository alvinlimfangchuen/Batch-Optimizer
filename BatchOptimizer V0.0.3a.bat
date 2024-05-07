@echo off
:home
color e
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
title BatchOptimizer
set ch==1
echo Select Tools:
echo [1] Ping Checker
echo.
echo [up] Unlimited PingCheck
echo _______________________________________
echo [2] DNS Cleaner 
echo _______________________________________
echo.[3] SystemInfo checker
echo _______________________________________
echo [4] Tasklist
echo _______________________________
echo [5] Window Activation Key
echo _______________________________
echo.
echo.
echo.
echo ________________________________________________________Developer@DNAProject_Cmd
set /p ch=Enter Code here:
cls
if %ch%==1 goto pc
If %ch%==2 goto dns
if %ch%==3 goto cpu
if %ch%==4 goto tsk
if %ch%==up goto up
IF not exist %ch%==1
if not exist %ch%==2
if not exist %ch%==3
if not exist %ch%==4
if not exist %ch%==up
goto error

:pc
echo You have selected Ping Checker
echo GoodPing: Below 200ms
echo Press Enter to Proceed:
pause
ping google.com
Echo Back To Homepage
set /p h=Homepage(B):
cls
goto home

:up
echo Unlimited PingCheck:
echo * pinging Unlimted to check ur ping untill your close*
echo * Good for Gamers to check their Games such as Dota etc.
pause
ping google.com -t
set /p h=Homepage[b]:



:dns
echo Your Have Selected DNS Cleaner
echo *DNS Cleaner- Clean up ur DNS for better internet
set /p l=Press enter to proceed
timeout /t 4 /nobreak
ipconfig/flushdns
echo DNS Cleaned
set /p h=Homepage(B):
cls
goto home

:cpu
echo SystemInfo Checker:
*Show all your system infomation*
pause
systeminfo
set /p n=Homepage(B):
cls
goto home

:tsk
echo _______________________________ Tasklist:_______________________________________
echo *Display the task that running on your computer background*
pause 
tasklist
set /p n=Homepage(B):
cls
goto home

:error
echo Code error
echo  please select the right code
pause
cls
goto home

