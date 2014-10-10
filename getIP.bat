@echo off
echo Private IP:
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
echo %ip%
echo.
echo Public IP:
nslookup myip.opendns.com resolver1.opendns.com | findstr /r "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
echo.
pause
