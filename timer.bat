@echo off
:a
cls
setlocal enabledelayedexpansion
set /p timer=Duration sec: 
if not defined timer (
    echo Invalid input. The program will exit.
    exit /b
)
:countdown
set /a minutes=%timer%/60
set /a seconds=%timer% %% 60
cls
echo Time Remaining: !minutes! minute(s) !seconds! second(s)
set /a timer-=1
if %timer% GEQ 0 (
    timeout /t 1 >nul
    goto countdown
)
echo Time's up!
pause
goto a
endlocal
