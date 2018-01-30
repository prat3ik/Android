@echo off

adb tcpip 5555

timeout /t 10

adb shell ifconfig|find "inet addr:192.16" > a.txt
set /p ipofdevice=<a.txt

set _IP=%ipofdevice:~20,14%

set _IP=%_IP: =%
echo %_IP%


adb connect %_IP%:5555

pause

