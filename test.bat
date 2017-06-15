@Echo Off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho 01 "This is blue text"
echo.
call :colorEcho 02 "This is green text"
echo.
call :colorEcho 03 "This is cyan text"
echo.
call :colorEcho 04 "This is red text"
echo.
call :colorEcho 05 "This is magenta text"
echo.
call :colorEcho 06 "This is yellow text"
echo.
call :colorEcho 07 "This is light gray text"
echo.
call :colorEcho 09 "This is light blue text"
echo.
call :colorEcho 0a "This is light green text"
echo.
call :colorEcho 0b "This is light cyan text"
echo.
call :colorEcho 0c "This is light red text"
echo.
call :colorEcho 0d "This is light magenta text"
echo.
call :colorEcho 0e "This is light yellow text"
echo.
call :colorEcho 0f "This is white text"
echo.

call :colorEcho 8f "Highlighted background cause a dark gray background!"
echo.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i